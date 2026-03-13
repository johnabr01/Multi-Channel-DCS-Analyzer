library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;
use work.time_multiplex.ALL;

entity correlatorTop is
    Generic (
        numChannels : positive;
        channelSelectSize : integer;
        isMultiTau : boolean;
        numCombiners : positive;
        numDelaysPerCombiner : positive
    );
    Port ( clk : in STD_LOGIC;
           resetn : in STD_LOGIC;
           channelSelect : in STD_LOGIC_VECTOR (channelSelectSize - 1 downto 0);
           aIn : in STD_LOGIC_VECTOR (15 downto 0);
           bIn : in STD_LOGIC_VECTOR (15 downto 0);
           dataInValid : in STD_LOGIC;
           dataInLast : in STD_LOGIC;
           dataOut : out STD_LOGIC_VECTOR (31 downto 0);
           dataOutValid : out STD_LOGIC;
           dataOutLast : out STD_LOGIC
    );
end correlatorTop;

architecture Behavioral of correlatorTop is
    component multi_tau_correlator is
        Generic (
            numChannels : integer;
            numCombiners : integer;
            numDelaysPerCombiner : positive
        );
        Port ( Clk : in STD_LOGIC;
               ChaInSel : in STD_LOGIC_VECTOR (channels_to_bits(numChannels) - 1 downto 0);
               Ain : in STD_LOGIC_VECTOR (15 downto 0);
               Bin : in STD_LOGIC_VECTOR (15 downto 0);
               NDin : in STD_LOGIC;
               EODin : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Dout : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'); --Normalized single-precision value.
               DoutRdy : out STD_LOGIC := '0');
    end component;
    
    component linear_correlator is
        Generic (
            numChannels : integer;
            numCombiners : integer;
            numDelaysPerCombiner : positive
        );
        Port ( Clk : in STD_LOGIC;
               ChaInSel : in STD_LOGIC_VECTOR (channels_to_bits(numChannels) - 1 downto 0);
               Ain : in STD_LOGIC_VECTOR (15 downto 0);
               Bin : in STD_LOGIC_VECTOR (15 downto 0);
               NDin : in STD_LOGIC;
               EODin : in STD_LOGIC;
               Reset : in STD_LOGIC;
               Dout : out STD_LOGIC_VECTOR (31 downto 0) := (others => '0'); --Normalized single-precision value.
               DoutRdy : out STD_LOGIC := '0');
    end component;
    
    signal resetActiveHigh : std_logic;
    signal dataOutIntermediate, dataInLastSync : std_logic;
begin
    dataOutValid <= dataOutIntermediate;
    resetActiveHigh <= NOT resetn;
    dataInLastSync <= dataInLast AND dataInValid;

    gen_mt_correlator : if isMultiTau generate 
        multi_tau : multi_tau_correlator
        generic map (
            numChannels => numChannels,
            numCombiners => numCombiners,
            numDelaysPerCombiner => numDelaysPerCombiner
        )
        port map (
            Clk => clk,
            Reset => resetActiveHigh,
            ChaInSel => channelSelect,
            Ain => aIn,
            Bin => bIn,
            NDin => dataInValid,
            EODin => dataInLastSync,
            Dout => dataOut,
            DoutRdy => dataOutIntermediate
        );
    end generate;
    
    gen_linear_correlator : if NOT isMultiTau generate 
        linear : linear_correlator
        generic map (
            numChannels => numChannels,
            numCombiners => numCombiners,
            numDelaysPerCombiner => numDelaysPerCombiner
        )
        port map (
            Clk => clk,
            Reset => resetActiveHigh,
            ChaInSel => channelSelect,
            Ain => aIn,
            Bin => bIn,
            NDin => dataInValid,
            EODin => dataInLastSync,
            Dout => dataOut,
            DoutRdy => dataOutIntermediate
        );
    end generate;
    
    lastGenerator : block
        constant correlationLength : integer := 16 + 8*numCombiners;
        
        component counter is
            Generic (
                maxVal : integer
            );
            Port ( enable : in STD_LOGIC;
                   clk : in STD_LOGIC;
                   reset : in STD_LOGIC;
                   count : out STD_LOGIC_VECTOR (channels_to_bits(maxVal) - 1 downto 0));
        end component counter;
        
        signal countOut : STD_LOGIC_VECTOR(channels_to_bits(correlationLength - 1) - 1 downto 0);
        signal countOutUnsigned : UNSIGNED(countOut'RANGE);
    begin
        counterGen : counter
        generic map(
            maxVal => correlationLength - 1
        )
        port map(
            clk => clk,
            reset => resetActiveHigh,
            enable => dataOutIntermediate,
            count => countOut
        );
        
        countOutUnsigned <= unsigned(countOut);
        dataOutLast <= '1' when countOutUnsigned = correlationLength - 1 else '0';
    end block;
end Behavioral;
