#include <string.h>
#include "DCS_Analyzer.h"
#include "xstatus.h"
#include "xil_io.h"

#define DCS_ANALYZER_S_AXI_SLV_CTRL_OFFSET 0
#define DCS_ANALYZER_S_AXI_SLV_AConst_OFFSET 4
#define DCS_ANALYZER_S_AXI_SLV_r1InNeg_OFFSET 8
#define DCS_ANALYZER_S_AXI_SLV_rbInNeg_OFFSET 12
#define DCS_ANALYZER_S_AXI_SLV_r1HReciprocal_OFFSET 16
#define DCS_ANALYZER_S_AXI_SLV_rbHReciprocal_OFFSET 20
#define DCS_ANALYZER_S_AXI_SLV_iterationThreshold_OFFSET 24
#define DCS_ANALYZER_S_AXI_SLV_percentDiffThreshold_OFFSET 28
#define DCS_ANALYZER_S_AXI_SLV_finalMSE_OFFSET 32
#define DCS_ANALYZER_S_AXI_SLV_worstAlphaDb_OFFSET 36
#define DCS_ANALYZER_S_AXI_SLV_goodAlphaDb_OFFSET 40
#define DCS_ANALYZER_S_AXI_SLV_bestAlphaDb_OFFSET 44
#define DCS_ANALYZER_S_AXI_SLV_worstBeta_OFFSET 48
#define DCS_ANALYZER_S_AXI_SLV_goodBeta_OFFSET 52
#define DCS_ANALYZER_S_AXI_SLV_bestBeta_OFFSET 56
#define DCS_ANALYZER_S_AXI_SLV_BTau_OFFSET 60
#define DCS_ANALYZER_S_AXI_SLV_g2e_OFFSET(corr_len) 60 + corr_len * 4

#define CTRL_REG_START_BIT 0
#define CTRL_REG_ITERATION_LSB 17
#define CTRL_REG_ITERATION_MSB 28
#define CTRL_REG_ITERATION_SIZE CTRL_REG_ITERATION_MSB-CTRL_REG_ITERATION_LSB+1
#define CTRL_REG_MSE_ZERO_BIT 29
#define CTRL_REG_ITERATIONS_BIT 30
#define CTRL_REG_PERCENT_DIFF_BIT 31

#define CHECK_BIT(var,pos) ((var) & (1<<(pos)))
#define GENERATE_MASK(startBit, size) (((1 << (size)) - 1) << (startBit))

/**
 *
 * Write a value to a DCS_ANALYZER register. A 32 bit write is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is written.
 *
 * @param   BaseAddress is the base address of the DCS_ANALYZERdevice.
 * @param   RegOffset is the register offset from the base to write to.
 * @param   Data is the data written to the register.
 *
 * @return  None.
 *
 * @note
 * C-style signature:
 * 	void DCS_ANALYZER_mWriteReg(u32 BaseAddress, unsigned RegOffset, u32 Data)
 *
 */
#define DCS_ANALYZER_mWriteReg(BaseAddress, RegOffset, Data) \
  	Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
	
#define DCS_ANALYZER_mWriteRegFloat(BaseAddress, RegOffset, Data) \
  	DCS_ANALYZER_mWriteReg(BaseAddress, RegOffset, floatTou32(Data))

/**
 *
 * Read a value from a DCS_ANALYZER register. A 32 bit read is performed.
 * If the component is implemented in a smaller width, only the least
 * significant data is read from the register. The most significant data
 * will be read as 0.
 *
 * @param   BaseAddress is the base address of the DCS_ANALYZER device.
 * @param   RegOffset is the register offset from the base to write to.
 *
 * @return  Data is the data from the register.
 *
 * @note
 * C-style signature:
 * 	u32 DCS_ANALYZER_mReadReg(u32 BaseAddress, unsigned RegOffset)
 *
 */
#define DCS_ANALYZER_mReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
	
#define DCS_ANALYZER_mReadRegFloat(BaseAddress, RegOffset) \
    u32ToFloat(Xil_In32((BaseAddress) + (RegOffset)))
	
static inline u32 floatTou32(float in) {
	u32 output;
	memcpy(&output, &in, sizeof(in));
	return output;
}

static inline float u32ToFloat(u32 in) {
	float output;
	memcpy(&output, &in, sizeof(in));
	return output;
}

/************************** Function Definitions ***************************/
dcs_analyzer_dev_t DCS_Analyzer_init(u32 base_addr, u32 corr_len) {
	return (dcs_analyzer_dev_t) {
		.base_addr = base_addr,
		.corr_len = corr_len
	};
}

int writeBTau(const dcs_analyzer_dev_t* dev, const float* arr, size_t arr_len) {
	//Make sure the array length isn't too long
	if(arr_len > dev->corr_len) {
		return 1;
	}
	
	for(size_t x = 0; x < arr_len; x++) {
		DCS_ANALYZER_mWriteReg(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_BTau_OFFSET + sizeof(*arr) * x, floatTou32(arr[x]));
	}
	return 0;
}

int writeG2E(const dcs_analyzer_dev_t* dev, const float* arr, size_t arr_len) {
	//Make sure the array length isn't too long
	if(arr_len > dev->corr_len) {
		return 1;
	}
	
	for(size_t x = 0; x < arr_len; x++) {
		DCS_ANALYZER_mWriteReg(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_g2e_OFFSET(dev->corr_len) + sizeof(*arr) * x, floatTou32(arr[x]));
	}
	return 0;
}

void setupAnalyzerParameters(const dcs_analyzer_dev_t* dev, const analyzer_parameters_t* params) {
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_AConst_OFFSET, params->AConst);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_r1InNeg_OFFSET, params->r1InNeg);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_rbInNeg_OFFSET, params->rbInNeg);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_r1HReciprocal_OFFSET, params->r1HReciprocal);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_rbHReciprocal_OFFSET, params->rbHReciprocal);
	DCS_ANALYZER_mWriteReg(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_iterationThreshold_OFFSET, params->iterationThreshold);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_percentDiffThreshold_OFFSET, params->percentDiffThreshold);
	
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_worstAlphaDb_OFFSET, params->worst.alphaDb);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_goodAlphaDb_OFFSET, params->good.alphaDb);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_bestAlphaDb_OFFSET, params->best.alphaDb);
	
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_worstBeta_OFFSET, params->worst.beta);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_goodBeta_OFFSET, params->good.beta);
	DCS_ANALYZER_mWriteRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_bestBeta_OFFSET, params->best.beta);
}

void startAnalyzer(const dcs_analyzer_dev_t* dev) {
	DCS_ANALYZER_mWriteReg(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_CTRL_OFFSET, 1<<CTRL_REG_START_BIT);
}

void getAnalyzerResults(const dcs_analyzer_dev_t* dev, analyzer_point_t* finalPoint, float* finalPointMSE, interrupt_reason_t* interruptReason, u16* numIterations) {
	u32 ctrlReg = DCS_ANALYZER_mReadReg(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_CTRL_OFFSET);
	
	//Extract interrupt reason from control register
	if(CHECK_BIT(ctrlReg, CTRL_REG_MSE_ZERO_BIT)) {
		*interruptReason = MSEZero;
	}
	else if(CHECK_BIT(ctrlReg, CTRL_REG_ITERATIONS_BIT)) {
		*interruptReason = iterations;
	}
	else if(CHECK_BIT(ctrlReg, CTRL_REG_PERCENT_DIFF_BIT)) {
		*interruptReason = percentDiff;
	}
	else {
		*interruptReason = none;
	}
	
	//Extract the number of iterations from control register
	const u32 mask = GENERATE_MASK(CTRL_REG_ITERATION_LSB, CTRL_REG_ITERATION_SIZE);
	*numIterations = (mask & ctrlReg) >> CTRL_REG_ITERATION_LSB;
	
	finalPoint->alphaDb = DCS_ANALYZER_mReadRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_bestAlphaDb_OFFSET);
	finalPoint->beta = DCS_ANALYZER_mReadRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_bestBeta_OFFSET);
	
	*finalPointMSE = DCS_ANALYZER_mReadRegFloat(dev->base_addr, DCS_ANALYZER_S_AXI_SLV_finalMSE_OFFSET);
}