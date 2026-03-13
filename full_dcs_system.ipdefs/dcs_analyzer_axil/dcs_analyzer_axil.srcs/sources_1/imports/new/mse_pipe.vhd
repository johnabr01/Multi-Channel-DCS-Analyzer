library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use work.logb2Func.all;

entity mse_pipe is
    Generic (
        correlationDelays : positive := 80
    );
    Port (
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        --Inputs
        alphaDb : in STD_LOGIC_VECTOR (31 downto 0);
        beta : in STD_LOGIC_VECTOR (31 downto 0);
        
        --BTau Memory read interface
        BTauReadAddr : out STD_LOGIC_VECTOR (logb2(correlationDelays) - 1 downto 0);
        BTauIn : in STD_LOGIC_VECTOR (31 downto 0);
        
        --g2e Memory read interface
        g2eReadAddr : out STD_LOGIC_VECTOR (logb2(correlationDelays) - 1 downto 0);
        G2eIn : in STD_LOGIC_VECTOR (31 downto 0);
        
        --Constants
        AConst : in STD_LOGIC_VECTOR (31 downto 0);
        r1InNeg : in STD_LOGIC_VECTOR (31 downto 0);
        rbInNeg : in STD_LOGIC_VECTOR (31 downto 0);
        r1HReciprocal : in STD_LOGIC_VECTOR (31 downto 0);
        rbHReciprocal : in STD_LOGIC_VECTOR (31 downto 0);
        
        inputValid : in std_logic;
        inputReady : out std_logic;
        
        --Outputs
        mseOut : out STD_LOGIC_VECTOR (31 downto 0);
        mseOutValid : out STD_LOGIC
    );
end mse_pipe;

architecture Behavioral of mse_pipe is
    component sqrt_pipe is
        Port (
            --Clk + rst
            aclk : in std_logic;
            aresetn : in std_logic;--Must be driven down for a min of 2 clocks; Clock after rst is deasserted cannot be used
            
            --Inputs
            alphaDb : in STD_LOGIC_VECTOR (31 downto 0);
            BTau : in STD_LOGIC_VECTOR (31 downto 0);
            Aconst : in STD_LOGIC_VECTOR (31 downto 0);
            inputValid : in std_logic;
            inputLast : in std_logic;
            
            --Outputs
            output : out STD_LOGIC_VECTOR (31 downto 0);
            outputValid : out STD_LOGIC;
            outputLast : out std_logic
        );
    end component;
    
    component beta_square_pipe is
        Port (
            --Clk + rst
            aclk : in STD_LOGIC;
            aresetn : in STD_LOGIC;
            
            --Inputs
            diffIn : in STD_LOGIC_VECTOR (31 downto 0);
            betaIn : in STD_LOGIC_VECTOR (31 downto 0);
            inputValid : in std_logic;
            inputLast : in std_logic;
            
            --Outputs
            output : out STD_LOGIC_VECTOR (31 downto 0);
            outputValid : out STD_LOGIC;
            outputLast : out std_logic
        );
    end component;
    
    component mse_accumulator is
        Port (
            --Clk + rst
            aclk : in STD_LOGIC;
            aresetn : in STD_LOGIC;
    
            --Inputs
            g2In : in STD_LOGIC_VECTOR (31 downto 0);
            g2eIn : in STD_LOGIC_VECTOR (31 downto 0);
            inputValid : in std_logic;
            inputLast : in std_logic;
    
            --Outputs
            output : out STD_LOGIC_VECTOR (31 downto 0);
            outputValid : out STD_LOGIC;
            outputLast : out std_logic
        );
    end component;
    
    component exponential_pipe is
        Port (
            --Clk + rst
            aclk : in STD_LOGIC;
            aresetn : in STD_LOGIC;
            
            --Inputs
            rInNeg : in STD_LOGIC_VECTOR (31 downto 0);
            sqrtIn : in STD_LOGIC_VECTOR (31 downto 0);
            rHReciprocal : in STD_LOGIC_VECTOR (31 downto 0);
            inputValid : in std_logic;
            inputLast : in std_logic;
            
            --Outputs
            output : out STD_LOGIC_VECTOR (31 downto 0);
            outputValid : out STD_LOGIC;
            outputLast : out STD_LOGIC
        );
    end component;
    
    COMPONENT subtract_single_float
        PORT (
            aclk : IN STD_LOGIC;
            aresetn : IN STD_LOGIC;
            s_axis_a_tvalid : IN STD_LOGIC;
            s_axis_a_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            s_axis_a_tlast : IN STD_LOGIC;
            s_axis_b_tvalid : IN STD_LOGIC;
            s_axis_b_tdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tvalid : OUT STD_LOGIC;
            m_axis_result_tdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
            m_axis_result_tlast : OUT STD_LOGIC 
        );
    END COMPONENT;
    
    COMPONENT shift_register is
      generic (
        sr_depth : positive;
        sr_width : positive
      );
      port (
        clk : in std_logic;
        aresetn : in std_logic;
     
        sr_in : in std_logic_vector(sr_width - 1 downto 0);
        sr_out : out std_logic_vector(sr_width - 1 downto 0)
      );
    end COMPONENT;
    
    component counter
        Generic (
            maxVal : integer
        );
        Port ( enable : in STD_LOGIC;
               clk : in STD_LOGIC;
               reset : in STD_LOGIC;
               count : out STD_LOGIC_VECTOR (logb2(maxVal + 1) - 1 downto 0));
    end component;
    
    signal alphaDbReg, betaReg : std_logic_vector(31 downto 0) := (others => '0');
    signal delayedAlphaDbReg : std_logic_vector(31 downto 0) := (others => '0');

    --Intermediate data and their valid/last signals
    signal sqrtOutput, r1Term, rbTerm, subtractionOutput, theoreticalCorrelation, betaDelayed : std_logic_vector(31 downto 0);
    signal sqrtOutputValid, sqrtOutputLast, r1TermValid, r1TermLast, rbTermValid, rbTermLast, subtractionOutputValid,
    subtractionOutputLast, theoreticalCorrelationValid, theoreticalCorrelationLast : std_logic;
    
    signal bTauPipeInput, g2ePipeInput : std_logic_vector(31 downto 0);
    signal sqrtInputValid, sqrtInputLast : std_logic := '0';
    signal preempTheoreticalCorrValid : std_logic;
begin
    bTauMemoryRead : block
        constant maxAddr : integer := correlationDelays - 1;
    
        signal bTauReadAddrLocal : std_logic_vector(logb2(correlationDelays) - 1 downto 0);
        signal counterEnableReg : std_logic := '0';
        signal activeHighReset, inputReadyLocal : std_logic := '1';
    begin
        activeHighReset <= NOT aresetn;
        inputReady <= inputReadyLocal;
        bTauReadAddr <= bTauReadAddrLocal;
        bTauPipeInput <= BTauIn;
        
        inputHandler : process(aclk) begin
            if rising_edge(aclk) then
                if aresetn = '0' then
                    counterEnableReg <= '0';
                    inputReadyLocal <= '1';
                    
                    alphaDbReg <= (others => '0');
                    betaReg <= (others => '0');
                elsif unsigned(bTauReadAddrLocal) = maxAddr then
                    --When counter reaches max val, stop the counter
                    counterEnableReg <= '0';
                    inputReadyLocal <= '1';
                    
                    alphaDbReg <= (others => '0');
                    betaReg <= (others => '0');
                elsif inputValid = '1' AND  inputReadyLocal = '1' then
                    counterEnableReg <= '1';
                    inputReadyLocal <= '0';
                    
                    alphaDbReg <= alphaDb;
                    betaReg <= beta;
                end if;
            end if;
        end process;
    
        bTauRamCounter: counter
        Generic map (
            maxVal => maxAddr
        )
        Port map (
            enable => counterEnableReg,
            clk => aclk,
            reset => activeHighReset,
            count => bTauReadAddrLocal
        );
        
        inputSignalDelayer : process(aclk) begin
            if rising_edge(aclk) then
                if aresetn = '0' then
                    sqrtInputValid <= '0';
                    sqrtInputLast <= '0';
                    delayedAlphaDbReg <= (others => '0');
                else
                    sqrtInputValid <= counterEnableReg;
                    delayedAlphaDbReg <= alphaDbReg;
                    if unsigned(bTauReadAddrLocal) = maxAddr then
                        sqrtInputLast <= '1';
                    else
                        sqrtInputLast <= '0';
                    end if;
                end if;
            end if;
        end process;
    end block;

    sqrt : sqrt_pipe
    Port map(
        --Clk + rst
        aclk => aclk,
        aresetn => aresetn,
        
        --Inputs
        alphaDb => delayedAlphaDbReg,
        BTau => bTauPipeInput,
        Aconst => AConst,
        inputValid => sqrtInputValid,
        inputLast => sqrtInputLast,
        
        --Outputs
        output => sqrtOutput,
        outputValid => sqrtOutputValid,
        outputLast => sqrtOutputLast
    );
    
    exponential1 : exponential_pipe
    Port map(
        --Clk + rst
        aclk => aclk,
        aresetn => aresetn,
        
        --Inputs
        rInNeg => r1InNeg,
        sqrtIn => sqrtOutput,
        rHReciprocal => r1HReciprocal,
        inputValid => sqrtOutputValid,
        inputLast => sqrtOutputLast,
        
        --Outputs
        output => r1Term,
        outputValid => r1TermValid,
        outputLast => r1TermLast
    );
    
    exponentialb : exponential_pipe
    Port map(
        --Clk + rst
        aclk => aclk,
        aresetn => aresetn,
        
        --Inputs
        rInNeg => rbInNeg,
        sqrtIn => sqrtOutput,
        rHReciprocal => rbHReciprocal,
        inputValid => sqrtOutputValid,
        inputLast => sqrtOutputLast,
        
        --Outputs
        output => rbTerm,
        outputValid => rbTermValid,
        outputLast => rbTermLast
    );
    
    sub_block : block
        signal subtractTLast : std_logic;
    begin
        subtractTLast <= r1TermLast AND rbTermLast;
    
        subtraction : subtract_single_float
        PORT MAP (
            aclk => aclk,
            aresetn => aresetn,
            s_axis_a_tvalid => r1TermValid,
            s_axis_a_tdata => r1Term,
            s_axis_a_tlast => subtractTLast,
            s_axis_b_tvalid => rbTermValid,
            s_axis_b_tdata => rbTerm,
            m_axis_result_tvalid => subtractionOutputValid,
            m_axis_result_tdata => subtractionOutput,
            m_axis_result_tlast => subtractionOutputLast
        );
    end block;
    
    beta_delay : shift_register
    generic map (
        --Depth calculated from the following latencies of prior modules
        --In_delay=1 + sqrt_pipe=16 + exp_pipe=18 + subtract=5 = 37
        sr_depth => 40,
        sr_width => 32
    )
    port map (
        clk => aclk,
        aresetn => aresetn,
        
        sr_in => betaReg,
        sr_out => betaDelayed
    );
    
    beta_square : beta_square_pipe
    Port map (
        --Clk + rst
        aclk => aclk,
        aresetn => aresetn,
       
        --Input
        diffIn => subtractionOutput,
        betaIn => betaDelayed,
        inputValid => subtractionOutputValid,
        inputLast => subtractionOutputLast,
       
        --Output
        output => theoreticalCorrelation,
        outputValid => theoreticalCorrelationValid,
        outputLast => theoreticalCorrelationLast
    );
    
    --This modules provides a theoreticalCorrelationValid that goes high 2 clocks prior
    --in order to enable the counter to read from the g2e RAM and reduce the latency
    --of the datapath to the next module
    preemp_theoretical_corr_valid : shift_register
    generic map (
        --Equal to 2*multiplier latency - 2
        sr_depth => 2*5-2,
        sr_width => 1
    )
    port map (
        clk => aclk,
        aresetn => aresetn,
        
        sr_in(0) => subtractionOutputValid,
        sr_out(0) => preempTheoreticalCorrValid
    );
    
    g2eMemoryRead : block
        constant maxAddr : integer := correlationDelays - 1;
    
        signal g2eReadAddrLocal : std_logic_vector(logb2(correlationDelays) - 1 downto 0);
        signal counterEnableReg : std_logic := '0';
        signal activeHighReset : std_logic;
    begin
        activeHighReset <= NOT aresetn;
        g2eReadAddr <= g2eReadAddrLocal;
        g2ePipeInput <= G2eIn;
        
        process(aclk) begin
            if rising_edge(aclk) then
                if aresetn = '0' then
                    counterEnableReg <= '0';
                elsif unsigned(g2eReadAddrLocal) = maxAddr then
                    counterEnableReg <= '0';
                elsif preempTheoreticalCorrValid = '1' then
                    counterEnableReg <= '1';
                end if;
            end if;
        end process;
    
        g2eRamCounter: counter
        Generic map (
            maxVal => maxAddr
        )
        Port map (
            enable => counterEnableReg,
            clk => aclk,
            reset => activeHighReset,
            count => g2eReadAddrLocal
        );
    end block;
    
    mse_calc : mse_accumulator
    Port map (
        --Clk + rst
        aclk => aclk,
        aresetn => aresetn,

        --Inputs
        g2In => theoreticalCorrelation,
        g2eIn => g2ePipeInput,
        inputValid => theoreticalCorrelationValid,
        inputLast => theoreticalCorrelationLast,

        --Outputs
        output => mseOut,
        outputValid => open,
        outputLast => mseOutValid
    );
end Behavioral;
