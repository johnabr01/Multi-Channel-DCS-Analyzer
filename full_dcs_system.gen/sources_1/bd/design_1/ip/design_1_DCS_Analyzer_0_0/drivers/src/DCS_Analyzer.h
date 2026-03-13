
#ifndef DCS_ANALYZER_H
#define DCS_ANALYZER_H


/****************** Include Files ********************/
#include "xil_types.h"

/**************************** Type Definitions *****************************/
typedef enum {
    MSEZero,
	iterations,
	percentDiff,
	none
} interrupt_reason_t;

typedef struct 
{
    u32 base_addr;
    u32 corr_len;
} dcs_analyzer_dev_t;

typedef struct 
{
    float alphaDb, beta;
} analyzer_point_t;

typedef struct 
{
    float AConst;
	float r1InNeg;
	float rbInNeg;
	float r1HReciprocal;
	float rbHReciprocal;
	float percentDiffThreshold;
	analyzer_point_t worst, good, best;
	u16 iterationThreshold;
} analyzer_parameters_t;

/************************** Function Prototypes ****************************/

/**
 *
 * Initializes a DCS_Analyzer for future use.
 *
 * @param   The base address of the analyzer to be returned. Should be obtained from hardware parameters.
 * @param   Length of correlation for the analyzer. Should be obtained from hardware parameters.
 *
 * @return  DCS Analyzer device struct.
 *
 */
dcs_analyzer_dev_t DCS_Analyzer_init(u32 base_addr, u32 corr_len);

/**
 *
 * Write array to BTau RAMs in analyzer.
 *
 * @param   dev is the pointer to the dcs_analyzer_dev_t to use.
 * @param   arr is a pointer to the array of floats to write.
 * @param   arr_len is the length of arr. It should be smaller than the corr_len.
 *
 * @return  Error status of the function. Returns non-zero for errors.
 *
 */
int writeBTau(const dcs_analyzer_dev_t* dev, const float* arr, size_t arr_len);

/**
 *
 * Write array to g2e RAMs in analyzer.
 *
 * @param   dev is the pointer to the dcs_analyzer_dev_t to use.
 * @param   arr is a pointer to the array of floats to write.
 * @param   arr_len is the length of arr. It should be smaller than the corr_len.
 *
 * @return  Error status of the function. Returns non-zero for errors.
 *
 */
int writeG2E(const dcs_analyzer_dev_t* dev, const float* arr, size_t arr_len);

/**
 *
 * Write Analyzer Parameters
 *
 * @param   dev is the pointer to the dcs_analyzer_dev_t to use.
 * @param   params is a pointer to the analyzer_parameters_t parameters.
 *
 */
void setupAnalyzerParameters(const dcs_analyzer_dev_t* dev, const analyzer_parameters_t* params);

/**
 *
 * Starts the analyzer using preconfigured parameters. The analyzer will trigger
 * an interrupt when it's finished.
 *
 * @param   dev is the pointer to the dcs_analyzer_dev_t to use.
 *
 */
void startAnalyzer(const dcs_analyzer_dev_t* dev);

/**
 *
 * Outputs results of the analyzer.
 *
 * @param   dev is the pointer to the dcs_analyzer_dev_t to use.
 * @param   finalPoint is the pointer to output the final analyzer_point_t.
 * @param   finalPointMSE is the pointer to output the MSE of finalPoint.
 * @param   interruptReason is the pointer to output the interrupt_reason_t.
 * @param   numIterations is the pointer to output the number of iterations for termination.
 *
 */
void getAnalyzerResults(const dcs_analyzer_dev_t* dev, analyzer_point_t* finalPoint, float* finalPointMSE, interrupt_reason_t* interruptReason, u16* numIterations);

#endif // DCS_ANALYZER_H
