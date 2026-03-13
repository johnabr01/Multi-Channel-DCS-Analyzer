library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.logb2Func.all;
use work.neldermead_record.all;

entity analyzer is
    Generic (
        correlationDelays : positive := 80
    );
    Port (
        --Clk + rst
        aclk : in STD_LOGIC;
        aresetn : in STD_LOGIC;
        
        --Internal register access
        controlRegIn : in std_logic_vector (31 downto 0);
        controlRegInEnable : in std_logic;
        controlRegOut : out std_logic_vector (31 downto 0);
        
        worstAlphaDbIn : in std_logic_vector (31 downto 0);
        goodAlphaDbIn : in std_logic_vector (31 downto 0);
        bestAlphaDbIn : in std_logic_vector (31 downto 0);
        worstBetaIn : in std_logic_vector (31 downto 0);
        goodBetaIn : in std_logic_vector (31 downto 0);
        bestBetaIn : in std_logic_vector (31 downto 0);
        worstAlphaDbEnable : in std_logic;
        goodAlphaDbEnable : in std_logic;
        bestAlphaDbEnable : in std_logic;
        worstBetaEnable : in std_logic;
        goodBetaEnable : in std_logic;
        bestBetaEnable : in std_logic;
        worstAlphaDbOut : out std_logic_vector (31 downto 0);
        goodAlphaDbOut : out std_logic_vector (31 downto 0);
        bestAlphaDbOut : out std_logic_vector (31 downto 0);
        worstBetaOut : out std_logic_vector (31 downto 0);
        goodBetaOut : out std_logic_vector (31 downto 0);
        bestBetaOut : out std_logic_vector (31 downto 0);
        
        --Threshold parameters should be held constant during operation
        iterationThreshold : in std_logic_vector (11 downto 0);
        percentDifferenceThreshold : in std_logic_vector (31 downto 0);
        
        doneInterrupt : out std_logic := '0';
        finalMSE : out std_logic_vector(31 downto 0);
        
        --BTau Memory write interface
        BTauWrite : in STD_LOGIC_VECTOR (31 downto 0);
        BTauAddr : in STD_LOGIC_VECTOR (logb2(correlationDelays) - 1 downto 0);
        BTauWriteEnable : in std_logic;--Write to BTau memory when inputReady is high
        
        --g2e Memory write interface
        g2eWrite : in STD_LOGIC_VECTOR (31 downto 0);
        g2eAddr : in STD_LOGIC_VECTOR (logb2(correlationDelays) - 1 downto 0);
        g2eWriteEnable : in std_logic;
        
        --MSE parameters should be held constant during operation
        AConst : in STD_LOGIC_VECTOR (31 downto 0);
        r1InNeg : in STD_LOGIC_VECTOR (31 downto 0);
        rbInNeg : in STD_LOGIC_VECTOR (31 downto 0);
        r1HReciprocal : in STD_LOGIC_VECTOR (31 downto 0);
        rbHReciprocal : in STD_LOGIC_VECTOR (31 downto 0)
    );
end analyzer;

architecture Behavioral of analyzer is
    --Bit 0 - Enable for the module
    --Bits 17-28 - Number of iterations
    --Bit 29 - Indicates an interrupt due to MSE=0
    --Bit 30 - Indicates an interrupt due to iteration threshold
    --Bit 31 - Indicates an interrupt due to a MSE percent difference threshold
    signal controlReg : std_logic_vector(31 downto 0) := (others => '0');
    alias searchEnabled : std_logic is controlReg(0);
    alias interruptDoneMSEZero : std_logic is controlReg(29);
    alias interruptDoneIterations : std_logic is controlReg(30);
    alias interruptDonePercentDiff : std_logic is controlReg(31);
    alias iterationOut : std_logic_vector(iterationThreshold'RANGE) is controlReg(28 downto 17);
    
    --Registers for storing points and their associated MSE
    signal worstPoint, goodPoint, bestPoint, midpointPoint, reflectedPoint, extendedPoint, contractedPoint, shrinkPoint : point_pair_mse_t := pointPairResetVal;
    
    signal msePipeInput : point_pair_t := (
        alphaDb => (others => '0'),
        beta => (others => '0')
    );
    signal mseOut : STD_LOGIC_VECTOR(31 downto 0);
    signal msePipeInputValid, msePipeInputReady, mseOutValid : std_logic := '0';
    signal msePipeResetn : std_logic := '1';
begin
    controlRegOut <= controlReg;
    worstAlphaDbOut <= worstPoint.alphaDb;
    worstBetaOut <= worstPoint.beta;
    goodAlphaDbOut <= goodPoint.alphaDb;
    goodBetaOut <= goodPoint.beta;
    bestAlphaDbOut <= bestPoint.alphaDb;
    bestBetaOut <= bestPoint.beta;
    
    finalMSE <= bestPoint.MSE;

    nelderMead : block
        component allPointCalculator is
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
        end component allPointCalculator;
        
        component sorter is
            port(
                --Clk + rst
                aclk : in std_logic;
                aresetn : in std_logic;
                
                worstPointIn : in point_pair_mse_t;
                goodPointIn : in point_pair_mse_t;
                bestPointIn : in point_pair_mse_t;
                inputPointsValid : in std_logic;
                inputPointsReady : out std_logic;
                
                worstPointOut : out point_pair_mse_t;
                goodPointOut : out point_pair_mse_t;
                bestPointOut : out point_pair_mse_t;
                bestPointChanged : out std_logic;
                outputPointsValid : out std_logic
            );
        end component sorter;
        
        component decisionMaker is
            port(
                --Clk + rst
                aclk : in std_logic;
                aresetn : in std_logic;
                
                --These points should be externally held constant during processing
                worstPointMSEIn : in std_logic_vector(31 downto 0);
                goodPointMSEIn : in std_logic_vector(31 downto 0);
                bestPointMSEIn : in std_logic_vector(31 downto 0);
                
                --Calculated inputs
                reflectMSEIn : in std_logic_vector(31 downto 0);
                reflectMSEValid : in std_logic;
                extendMSEIn : in std_logic_vector(31 downto 0);
                extendMSEValid : in std_logic;
                contractMSEIn : in std_logic_vector(31 downto 0);
                contractMSEValid : in std_logic;
                
                operationOut : out nelderMeadOperation;
                operationOutValid : out std_logic := '0'
            );
        end component decisionMaker;
        
        component termination is
            Generic(
                --Size of the iteration count in bits
                bitsForIterationCount : positive := 12
            );
            Port(
                --Clk + rst
                aclk : in STD_LOGIC;
                aresetn : in STD_LOGIC;
                
                percentDifferenceThreshold : in STD_LOGIC_VECTOR (31 downto 0);
                iterationThreshold : in unsigned (bitsForIterationCount - 1 downto 0);
                
                bestMSEValue, worstMSEValue : in STD_LOGIC_VECTOR (31 downto 0);
                numIterations : in unsigned (bitsForIterationCount - 1 downto 0);
                
                inputValid : in STD_LOGIC;
                inputReady : out STD_LOGIC;
                
                shouldTerminateIteration : out STD_LOGIC;
                shouldTerminatePercentDiff : out STD_LOGIC;
                shouldTerminateMSEZero : out STD_LOGIC;
                shouldTerminateValid : out STD_LOGIC
            );
        end component termination;
        
        --Sorter signals
        signal worstSorterOut, goodSorterOut, bestSorterOut : point_pair_mse_t;
        signal sorterInValid, sorterInReady, compInValidSort, sorterOutputValid, sorterBestPointChanged : std_logic := '0';
        
        --Point calculator signals
        signal pointCalculatorInValid, pointCalculatorReady : std_logic := '0';
        signal midpointOut, reflectOut, extendOut, contractOut, shrinkOut : point_pair_t;
        signal midpointOutValid, reflectOutValid, extendOutValid, contractOutValid, shrinkOutValid : std_logic;
        signal pointInputDone : std_logic := '0';
        
        --Operation decider
        signal operationValid, storedOperationValid : std_logic;
        signal storedOperation, operationOut : nelderMeadOperation;
        
        --Termination signals
        signal terminationInputValid, terminationInputReady, shouldTerminateIteration, shouldTerminatePercentDiff, shouldTerminateMSEZero, shouldTerminateValid : std_logic := '0';
        
        --States
        type nelderMeadStates is (initialPointMSE, initialSort, search);
        signal currState : nelderMeadStates := initialPointMSE; 
        
        type initialMSEStates is (worst, good, best, done);
        signal initialInputMSEPointState : initialMSEStates := worst;
        
        type searchStates is (
            pointCalcs,
            pointMSE,
            doOperation,
            postOpSort,
            checkTermination
        );
        signal searchState : searchStates := pointCalcs;
        
        type pointMSEStates is (reflect, extend, contract, midpoint, shrink, done);
        signal pointMSEState : pointMSEStates := reflect;
        
        --Iteration counter
        constant iterationCountSize : positive := iterationThreshold'LENGTH;
        signal iterationCount : unsigned(iterationCountSize - 1 downto 0) := (others => '0');
        signal iterationCountValid : std_logic := '0';
    begin
        process(aclk) begin
            if rising_edge(aclk) then
                if worstAlphaDbEnable = '1' then
                    worstPoint.alphaDb <= worstAlphaDbIn;
                end if;
                
                if worstBetaEnable = '1' then
                    worstPoint.beta <= worstBetaIn;
                end if;
                
                if goodAlphaDbEnable = '1' then
                    goodPoint.alphaDb <= goodAlphaDbIn;
                end if;
                
                if goodBetaEnable = '1' then
                    goodPoint.beta <= goodBetaIn;
                end if;
                
                if bestAlphaDbEnable = '1' then
                    bestPoint.alphaDb <= bestAlphaDbIn;
                end if;
                
                if bestBetaEnable = '1' then
                    bestPoint.beta <= bestBetaIn;
                end if;
                
                if aresetn = '0' then
                    controlReg <= (others => '0');
                else
                    if controlRegInEnable = '1' then
                        controlReg <= controlRegIn;
                    end if;
                end if;
                
                if iterationCountValid = '1' then
                    iterationOut <= std_logic_vector(iterationCount);
                end if;
                
                if aresetn = '0' OR searchEnabled = '0' then
                    currState <= initialPointMSE;
                    initialInputMSEPointState <= worst;
                    searchState <= pointCalcs;
                    
                    worstPoint.mseValid <= '0';
                    goodPoint.mseValid <= '0';
                    bestPoint.mseValid <= '0';
                    midpointPoint.mseValid <= '0';
                    reflectedPoint.mseValid <= '0';
                    extendedPoint.mseValid <= '0';
                    contractedPoint.mseValid <= '0';
                    shrinkPoint.mseValid <= '0';

                    doneInterrupt <= '0';
                    
                    msePipeInputValid <= '0';
                    msePipeResetn <= '1';
                    
                    sorterInValid <= '0';
                    
                    pointCalculatorInValid <= '0';
                    pointInputDone <= '0';
                    
                    pointMSEState <= reflect;
                    
                    iterationCount <= (others => '0');
                    iterationCountValid <= '0';
                else
                    --Search is enabled here
                    case currState is
                        when initialPointMSE =>
                            if msePipeInputReady = '1' then
                                --Advance initialInputMSEPointState when the pipe accepts a new point
                                case initialInputMSEPointState is
                                    when worst =>
                                        initialInputMSEPointState <= good;
                                        msePipeInput <= to_point_pair(worstPoint);
                                        msePipeInputValid <= '1';
                                    when good =>
                                        initialInputMSEPointState <= best;
                                        msePipeInput <= to_point_pair(goodPoint);
                                    when best =>
                                        initialInputMSEPointState <= done;
                                        msePipeInput <= to_point_pair(bestPoint);
                                    when done =>
                                        msePipeInputValid <= '0';
                                end case;
                            end if;
                            
                            if mseOutValid = '1' then
                                if worstPoint.mseValid = '0' then
                                    worstPoint.MSE <= mseOut;
                                    worstPoint.mseValid <= '1';
                                elsif goodPoint.mseValid = '0' then
                                    goodPoint.MSE <= mseOut;
                                    goodPoint.mseValid <= '1';
                                else
                                    bestPoint.MSE <= mseOut;
                                    bestPoint.mseValid <= '1';
                                    
                                    sorterInValid <= '1';
                                    currState <= initialSort;
                                end if;
                            end if;
                        when initialSort =>
                            if sorterInReady = '1' then
                                sorterInValid <= '0';
                            end if;
                        
                            if sorterOutputValid = '1' then
                                worstPoint <= worstSorterOut;
                                goodPoint <= goodSorterOut;
                                bestPoint <= bestSorterOut;
                            
                                currState <= search;
                            end if;
                        when search =>
                            if midpointOutValid = '1' then
                                midpointPoint <= to_point_pair_mse(midpointOut);
                            end if;
                            if reflectOutValid = '1' then
                                reflectedPoint <= to_point_pair_mse(reflectOut);
                            end if;
                            if extendOutValid = '1' then
                                extendedPoint <= to_point_pair_mse(extendOut);
                            end if;
                            if contractOutValid = '1' then
                                contractedPoint <= to_point_pair_mse(contractOut);
                            end if;
                            if shrinkOutValid = '1' then
                                shrinkPoint <= to_point_pair_mse(shrinkOut);
                            end if;
                            
                            case searchState is
                                when pointCalcs =>
                                    if pointInputDone = '0' then
                                        pointCalculatorInValid <= '1';
                                    end if;
                                    if pointCalculatorInValid = '1' AND pointCalculatorReady = '1' then
                                        pointCalculatorInValid <= '0';
                                        pointInputDone <= '1';
                                    end if;
                                    
                                    if reflectOutValid = '1' then
                                        --The reflected point comes out first and can be sent for MSE.
                                        --The other points will output before the MSE pipeline can take a
                                        --new point so only the reflectOutValid is checked.
                                        searchState <= pointMSE;
                                        
                                        --Cleanup
                                        pointInputDone <= '0';
                                    end if;
                                    
                                    --Deassert MSE reset so it can be used
                                    msePipeResetn <= '1';
                                when pointMSE =>
                                    --MSE pipe input
                                    if msePipeInputReady = '1' then
                                        case pointMSEState is
                                            when reflect =>
                                                msePipeInput <= to_point_pair(reflectedPoint);
                                                msePipeInputValid <= '1';
                                                
                                                pointMSEState <= contract; 
                                            when contract =>
                                                msePipeInput <= to_point_pair(contractedPoint);
                                                
                                                pointMSEState <= extend;
                                            when extend =>
                                                msePipeInput <= to_point_pair(extendedPoint);
                                                
                                                pointMSEState <= midpoint;
                                            when midpoint =>
                                                msePipeInput <= to_point_pair(midpointPoint);
                                                
                                                pointMSEState <= shrink;
                                            when shrink =>
                                                msePipeInput <= to_point_pair(shrinkPoint);
                                                
                                                pointMSEState <= done;
                                            when done =>
                                                msePipeInputValid <= '0';
                                        end case;
                                    end if;
                                    
                                    --MSE pipe output
                                    if mseOutValid = '1' then
                                        if reflectedPoint.mseValid = '0' then
                                            reflectedPoint.MSE <= mseOut;
                                            reflectedPoint.mseValid <= '1';
                                        elsif contractedPoint.mseValid = '0' then
                                            contractedPoint.MSE <= mseOut;
                                            contractedPoint.mseValid <= '1';
                                        elsif extendedPoint.mseValid = '0' then
                                            extendedPoint.MSE <= mseOut;
                                            extendedPoint.mseValid <= '1';
                                        elsif midpointPoint.mseValid = '0' then
                                            midpointPoint.MSE <= mseOut;
                                            midpointPoint.mseValid <= '1';
                                        elsif shrinkPoint.mseValid = '0' then
                                            shrinkPoint.MSE <= mseOut;
                                            shrinkPoint.mseValid <= '1';
                                        end if;
                                    end if;
                                    
                                    if operationValid = '1' then
                                        storedOperation <= operationOut;
                                        storedOperationValid <= '1';
                                        if operationOut /= shrink then
                                            searchState <= doOperation;
                                            
                                            --Cleanup
                                            pointMSEState <= reflect;
                                            storedOperationValid <= '0';
                                            msePipeInputValid <= '0';
                                        end if;
                                    end if;
                                    
                                    if storedOperationValid = '1' AND midpointPoint.mseValid = '1' AND shrinkPoint.mseValid = '1' then
                                        searchState <= doOperation;
                                        
                                        --Cleanup
                                        pointMSEState <= reflect;
                                        storedOperationValid <= '0';
                                        msePipeInputValid <= '0';
                                    end if;
                                when doOperation =>
                                    case storedOperation is
                                        when reflect =>
                                            worstPoint <= reflectedPoint;
                                        when extend =>
                                            worstPoint <= extendedPoint;
                                        when contract =>
                                            worstPoint <= contractedPoint;
                                        when shrink =>
                                            worstPoint <= shrinkPoint;
                                            goodPoint <= midpointPoint;
                                    end case;
                                    
                                    searchState <= postOpSort;
                                    sorterInValid <= '1';
                                    
                                    --Assert MSE reset to clear out points that are still being calculated
                                    msePipeResetn <= '0';
                                when postOpSort =>
                                    if sorterInReady = '1' then
                                        sorterInValid <= '0';
                                    end if;
                                
                                    if sorterOutputValid = '1' then
                                        worstPoint <= worstSorterOut;
                                        goodPoint <= goodSorterOut;
                                        bestPoint <= bestSorterOut;
                                    
                                        searchState <= checkTermination;
                                        
                                        --Perpare data for termination check
                                        iterationCount <= iterationCount + 1;
                                        iterationCountValid <= '1';
                                        
                                        terminationInputValid <= '1';
                                    end if;
                                when checkTermination =>
                                    if terminationInputReady = '1' then
                                        terminationInputValid <= '0';
                                    end if;
                                    
                                    if shouldTerminateValid = '1' then
                                        if shouldTerminateIteration = '1' OR shouldTerminatePercentDiff = '1' OR shouldTerminateMSEZero = '1' then
                                            searchEnabled <= '0';
                                            interruptDonePercentDiff <= shouldTerminatePercentDiff;
                                            interruptDoneIterations <= shouldTerminateIteration;
                                            interruptDoneMSEZero <= shouldTerminateMSEZero;
                                            
                                            doneInterrupt <= '1';
                                        else
                                            searchState <= pointCalcs;
                                        end if;
                                    end if;
                            end case;
                    end case;
                end if;
            end if;
        end process;
        
        sorterModule : sorter
        port map(
            aclk => aclk,
            aresetn => aresetn,
            worstPointIn => worstPoint,
            goodPointIn => goodPoint,
            bestPointIn => bestPoint,
            inputPointsValid => sorterInValid,
            inputPointsReady => sorterInReady,
            worstPointOut => worstSorterOut,
            goodPointOut => goodSorterOut,
            bestPointOut => bestSorterOut,
            bestPointChanged => sorterBestPointChanged,
            outputPointsValid => sorterOutputValid
        );
        
        pointCalculator : allPointCalculator
        port map(
            aclk => aclk,
            aresetn => aresetn,
            worstPointIn => to_point_pair(worstPoint),
            goodPointIn => to_point_pair(goodPoint),
            bestPointIn => to_point_pair(bestPoint),
            inputPointsValid => pointCalculatorInValid,
            inputPointsReady => pointCalculatorReady,
            midpointOut => midpointOut,
            midpointOutValid => midpointOutValid,
            reflectOut => reflectOut,
            reflectOutValid => reflectOutValid,
            extendOut => extendOut,
            extendOutValid => extendOutValid,
            contractOut => contractOut,
            contractOutValid => contractOutValid,
            shrinkOut => shrinkOut,
            shrinkOutValid => shrinkOutValid
        );
        
        operationDecider : decisionMaker
        port map(
            aclk => aclk,
            aresetn => aresetn,
            worstPointMSEIn => worstPoint.MSE,
            goodPointMSEIn => goodPoint.MSE,
            bestPointMSEIn => bestPoint.MSE,
            reflectMSEIn => reflectedPoint.MSE,
            reflectMSEValid => reflectedPoint.mseValid,
            extendMSEIn => extendedPoint.MSE,
            extendMSEValid => extendedPoint.mseValid,
            contractMSEIn => contractedPoint.MSE,
            contractMSEValid => contractedPoint.mseValid,
            operationOut => operationOut,
            operationOutValid => operationValid
        );
        
        terminationChecker : termination
        Generic map(
            bitsForIterationCount => iterationCountSize
        )
        Port map(
            aclk => aclk,
            aresetn => aresetn,
            
            percentDifferenceThreshold => percentDifferenceThreshold,
            iterationThreshold => unsigned(iterationThreshold),
            
            bestMSEValue => bestPoint.MSE,
            worstMSEValue => worstPoint.MSE,
            numIterations => iterationCount,
            
            inputValid => terminationInputValid,
            inputReady => terminationInputReady,
            
            shouldTerminateIteration => shouldTerminateIteration,
            shouldTerminatePercentDiff => shouldTerminatePercentDiff,
            shouldTerminateMSEZero => shouldTerminateMSEZero,
            shouldTerminateValid => shouldTerminateValid
        );
    end block;

    MSE : block
        component mse_pipe is
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
        end component;
        
        component ram_single_port_no_change
            Generic (
                dataWidthBits : positive;
                dataDepth : positive
            );
            Port (
                aclk : in STD_LOGIC;
                
                addr : in std_logic_vector(logb2(dataDepth) - 1 downto 0);
                dataIn : in std_logic_vector(dataWidthBits - 1 downto 0);
                dataOut : out std_logic_vector(dataWidthBits - 1 downto 0);
                writeEnable : in std_logic
            );
        end component;
    
        signal bTauAddrLocal, g2eAddrLocal, BTauReadAddr, g2eReadAddr : STD_LOGIC_VECTOR (logb2(correlationDelays) - 1 downto 0);
        signal BTauReadData, g2eReadData : STD_LOGIC_VECTOR (31 downto 0);
    begin
        pipeline : mse_pipe
        generic map(
            correlationDelays => correlationDelays
        )
        port map(
            aclk => aclk,
            aresetn => msePipeResetn,
            alphaDb => msePipeInput.alphaDb,
            beta => msePipeInput.beta,
            Aconst => Aconst,
            r1InNeg => r1InNeg,
            rbInNeg => rbInNeg,
            r1HReciprocal => r1HReciprocal,
            rbHReciprocal => rbHReciprocal,
            inputValid => msePipeInputValid,
            inputReady => msePipeInputReady,
            mseOut => mseOut,
            mseOutValid => mseOutValid,
            
            --BTau Memory read interface
            BTauReadAddr => BTauReadAddr,
            BTauIn => BTauReadData,
            
            --g2e Memory read interface
            g2eReadAddr => g2eReadAddr,
            g2eIn => g2eReadData
        );
    
        bTauAddrLocal <= BTauAddr when BTauWriteEnable = '1' else BTauReadAddr;
        bTauRam : ram_single_port_no_change
        Generic map (
            dataWidthBits => 32,
            dataDepth => correlationDelays
        )
        Port map (
            aclk => aclk,
            
            addr => bTauAddrLocal,
            dataIn => BTauWrite,
            dataOut => BTauReadData,
            writeEnable => BTauWriteEnable
        );
        
        g2eAddrLocal <= g2eAddr when g2eWriteEnable = '1' else g2eReadAddr;
        g2eRam : ram_single_port_no_change
        Generic map (
            dataWidthBits => 32,
            dataDepth => correlationDelays
        )
        Port map (
            aclk => aclk,
            
            addr => g2eAddrLocal,
            dataIn => g2eWrite,
            dataOut => g2eReadData,
            writeEnable => g2eWriteEnable
        );
    end block;
end Behavioral;
