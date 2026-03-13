library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity countCorrelateWrapper is
  Port (
    clk100MHz : IN STD_LOGIC;
    clk300MHz : IN STD_LOGIC;
    resetn : IN STD_LOGIC;
    
    detectorIn : IN STD_LOGIC;
    
    dataOut : out STD_LOGIC_VECTOR(31 DOWNTO 0);
    addressOut : out STD_LOGIC_VECTOR(31 DOWNTO 0);
    writeEnable : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    
    countOut : out std_logic_vector(7 downto 0);
    countOutValid : out std_logic;
    
    correlationOut : out std_logic_vector(31 downto 0);
    correlationOutValid : out std_logic;
    correlationOutLast : out std_logic
  );
end countCorrelateWrapper;

architecture Behavioral of countCorrelateWrapper is
    component count_and_bin_100 is
        Generic (
            --Size of bins in ns; should be multiple of 10 ns
            binSizeNs : positive := 1000;
            countOutSize : positive := 8;
            binsPerCorrelation : positive := 1e6 
        );
        Port (
            clk300MHz : in STD_LOGIC;
            clk100MHz : in STD_LOGIC;
            resetn : in STD_LOGIC;
            
            --Async detector input
            --10ns pulse width; 22ns dead time
            detectorIn : in STD_LOGIC;
            
            --Binned count synchronous to 100 MHz clock
            countOut : out STD_LOGIC_VECTOR(countOutSize - 1 downto 0);
            countOutValid : out STD_LOGIC;
            countOutLast : out STD_LOGIC
        );
    end component count_and_bin_100;

    COMPONENT correlator_mt
      PORT (
        clk : IN STD_LOGIC;
        resetn : IN STD_LOGIC;
        channelSelect : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
        aIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        bIn : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        dataInValid : IN STD_LOGIC;
        dataInLast : IN STD_LOGIC;
        dataOut : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
        dataOutValid : OUT STD_LOGIC;
        dataOutLast : OUT STD_LOGIC 
      );
    END COMPONENT;
    
    component intensity_normalize is
        Generic (
            countSize : positive := 8;
            numCombiners : positive
        );
        Port (
            clk : in STD_LOGIC;
            resetn : in STD_LOGIC;
            countIn : in STD_LOGIC_VECTOR(countSize - 1 downto 0);
            countInValid : in STD_LOGIC;
            countInLast : in STD_LOGIC;
            
            inputCorrelation : in STD_LOGIC_VECTOR(31 downto 0);
            inputCorrelationValid : in STD_LOGIC;
            inputCorrelationLast : in STD_LOGIC;
            
            normalizedCorrelation : out STD_LOGIC_VECTOR(31 downto 0);
            normalizedCorrelationValid : out STD_LOGIC;
            normalizedCorrelationLast : out STD_LOGIC
        );
    end component intensity_normalize;
    
    component correlator_write_controller is
        Port ( clk : in STD_LOGIC;
               resetn : in STD_LOGIC;
               dataIn : in STD_LOGIC_VECTOR (31 downto 0);
               dataInValid : in STD_LOGIC;
               dataInLast : in STD_LOGIC;
               dataOut : out STD_LOGIC_VECTOR (31 downto 0);
               writeEnable : out STD_LOGIC;
               addressOut : out STD_LOGIC_VECTOR (31 downto 0);
               interrupt : out std_logic);
    end component correlator_write_controller;
    
    --Acquisition connections
    constant countOutSize : positive := 8;
    signal binnedCountOut : std_logic_vector(countOutSize - 1 downto 0);
    signal binnedCountOutValid, binnedCountOutLast : std_logic;
    
    --Correlator connections
    signal unNormCorrelationOut : std_logic_vector(31 downto 0);
    signal unNormCorrelationOutValid, unNormCorrelationOutLast : std_logic;
    
    --Normalizer connections
    signal normCorrelationOut : std_logic_vector(31 downto 0);
    signal normCorrelationOutValid, normCorrelationOutLast : std_logic;
begin
    countOut <= binnedCountOut;
    countOutValid <= binnedCountOutValid;
    
    correlationOut <= normCorrelationOut;
    correlationOutValid <= normCorrelationOutValid;
    correlationOutLast <= normCorrelationOutLast;

    acquisition : count_and_bin_100
    Generic map(
        binSizeNs => 1000,
        countOutSize => countOutSize,
        binsPerCorrelation => 1e6 
    )
    Port map(
        clk300MHz => clk300MHz,
        clk100MHz => clk100MHz,
        resetn => resetn,
        detectorIn => detectorIn,
        countOut => binnedCountOut,
        countOutValid => binnedCountOutValid,
        countOutLast => binnedCountOutLast
    );

    correlator : correlator_mt
    PORT MAP(
        clk => clk100MHz,
        resetn => resetn,
        channelSelect => (others => '0'),
        aIn(15 downto binnedCountOut'HIGH + 1) => (others => '0'),
        aIn(binnedCountOut'RANGE) => binnedCountOut,
        bIn(15 downto binnedCountOut'HIGH + 1) => (others => '0'),
        bIn(binnedCountOut'RANGE) => binnedCountOut,
        dataInValid => binnedCountOutValid,
        dataInLast => binnedCountOutLast,
        dataOut => unNormCorrelationOut,
        dataOutValid => unNormCorrelationOutValid,
        dataOutLast => unNormCorrelationOutLast
    );
    
    normalizer : intensity_normalize
    Generic map(
        countSize => countOutSize,
        numCombiners => 6
    )
    Port map(
        clk => clk100MHz,
        resetn => resetn,
        countIn => binnedCountOut,
        countInValid => binnedCountOutValid,
        countInLast => binnedCountOutLast,
        inputCorrelation => unNormCorrelationOut,
        inputCorrelationValid => unNormCorrelationOutValid,
        inputCorrelationLast => unNormCorrelationOutLast,
        normalizedCorrelation => normCorrelationOut,
        normalizedCorrelationValid => normCorrelationOutValid,
        normalizedCorrelationLast => normCorrelationOutLast
    );
    
    ramWriteController : correlator_write_controller
    Port map( 
        clk => clk100MHz,
        resetn => resetn,
        dataIn => normCorrelationOut,
        dataInValid => normCorrelationOutValid,
        dataInLast => normCorrelationOutLast,
        dataOut => dataOut,
        writeEnable => writeEnable,
        addressOut => addressOut,
        interrupt => interrupt
    );
end Behavioral;
