library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.neldermead_record.all;

entity allPointCalculator is
    Port(
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        worstPointIn : in point_pair_t;
        goodPointIn : in point_pair_t;
        bestPointIn : in point_pair_t;
        inputPointsValid : in std_logic;
        inputPointsReady : out std_logic;
        
        midpointOut : out point_pair_t;
        midpointOutValid : out std_logic := '0';
        reflectOut : out point_pair_t;
        reflectOutValid : out std_logic := '0';
        extendOut : out point_pair_t;
        extendOutValid : out std_logic := '0';
        contractOut : out point_pair_t;
        contractOutValid : out std_logic := '0';
        shrinkOut : out point_pair_t;
        shrinkOutValid : out std_logic := '0'
    );
end allPointCalculator;

architecture Behavioral of allPointCalculator is
    component midpoint is
        Port (
            --Clk + rst
            aclk : in STD_LOGIC;
            aresetn : in STD_LOGIC;
            
            point1 : in point_pair_t;
            point2 : in point_pair_t;
            inputValid : in std_logic;
            
            midpoint : out point_pair_t;
            outputValid : out std_logic
        );
    end component;
    
    component reflect is
        Port (
            --Clk + rst
            aclk : in STD_LOGIC;
            aresetn : in STD_LOGIC;
            
            midpoint : in point_pair_t;        
            toReflect : in point_pair_t;
            inputValid : in std_logic;
            
            reflected : out point_pair_t;
            outputValid : out std_logic
        );
    end component;
    
    signal inputPointsReadyLocal : std_logic := '1';
    signal midpointCalcInValid, midpointCalcOutValid, reflectInValid, reflectedOutValid : std_logic := '0';
    signal worst, best, midpointIn1, midpointIn2, midpointCalcOut, midpointReflectIn, toReflectIn, reflectedOut : point_pair_t;
    
    type inputStates is (midpointInState, shrinkInState, midpointOutState, shrinkOutState, contractReflectOutState, extensionOutState);
    signal currState : inputStates := midpointInState;
begin
    inputPointsReady <= inputPointsReadyLocal;
    
    midpointOut <= midpointCalcOut;
    midpointOutValid <= midpointCalcOutValid when currState = midpointOutState else '0';
    
    shrinkOut <= midpointCalcOut;
    shrinkOutValid <= midpointCalcOutValid when currState = shrinkOutState else '0';
    
    reflectOut <= reflectedOut;
    reflectOutValid <= reflectedOutValid when currState = contractReflectOutState else '0';
    contractOut <= midpointCalcOut;
    contractOutValid <= midpointCalcOutValid when currState = contractReflectOutState else '0';
    
    extendOut <= reflectedOut;
    extendOutValid <= reflectedOutValid when currState = extensionOutState else '0';

    process(aclk) begin
        if rising_edge(aclk) then
            if aresetn = '0' then
                currState <= midpointInState;
                inputPointsReadyLocal <= '1';
                midpointCalcInValid <= '0';
                reflectInValid <= '0';
            else
                --Make valid pulse for only 1 clock
                if midpointCalcInValid = '1' then
                    midpointCalcInValid <= '0';
                end if;
                if reflectInValid = '1' then
                    reflectInValid <= '0';
                end if;
            
                case currState is
                    when midpointInState =>                    
                        if inputPointsValid = '1' AND inputPointsReadyLocal = '1' then
                            worst <= worstPointIn;
                            best <= bestPointIn;
                            inputPointsReadyLocal <= '0';
                        
                            midpointIn1 <= goodPointIn;
                            midpointIn2 <= bestPointIn;
                            midpointCalcInValid <= '1';
                            
                            currState <= shrinkInState;
                        end if;
                    when shrinkInState =>
                        midpointIn1 <= worst;
                        midpointIn2 <= best;
                        midpointCalcInValid <= '1';
                        
                        currState <= midpointOutState;
                    when midpointOutState =>
                        if midpointCalcOutValid = '1' then
                            --Input for contraction
                            midpointIn1 <= worst;
                            midpointIn2 <= midpointCalcOut;
                            midpointCalcInValid <= '1';
                            
                            --Input for reflection
                            midpointReflectIn <= midpointCalcOut;
                            toReflectIn <= worst;
                            reflectInValid <= '1';                         
                            
                            currState <= shrinkOutState;
                        end if;
                    when shrinkOutState =>
                        --Shrink should be value from midpoint module here
                        
                        currState <= contractReflectOutState;
                    when contractReflectOutState =>
                        if midpointCalcOutValid = '1' then
                            --These signals should be valid at the same time
                            assert reflectedOutValid = '1' report "reflected and midpoint modules don't have same latency" severity error;
                            
                            --Input for extension - reflect the old midpoint over the reflection
                            midpointReflectIn <= reflectedOut;
                            toReflectIn <= midpointReflectIn;
                            reflectInValid <= '1';
                            
                            currState <= extensionOutState;
                        end if;
                    when extensionOutState =>
                        if reflectedOutValid = '1' then
                            inputPointsReadyLocal <= '1';
                        
                            currState <= midpointInState;
                        end if;
                end case;
            end if;
        end if;
    end process;

    midpointCalculator : midpoint
    port map (
        aclk => aclk,
        aresetn => aresetn,
        point1 => midpointIn1,
        point2 => midpointIn2,
        inputValid => midpointCalcInValid,
        midpoint => midpointCalcOut,
        outputValid => midpointCalcOutValid
    );
    
    reflectCalculator : reflect
    port map (
        aclk => aclk,
        aresetn => aresetn,
        midpoint => midpointReflectIn,
        toReflect => toReflectIn,
        inputValid => reflectInValid,
        reflected => reflectedOut,
        outputValid => reflectedOutValid
    );
end Behavioral;
