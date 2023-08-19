//Yu Feng and Luke Allen

#include <stdio.h>
#include <stdlib.h>
#include <string.h>


int readFile(char[], int, unsigned int[]);
int readOutCompare(char[], int, unsigned long long int []);
void writeFile(char[], int, unsigned long long int []);
int findSignBit(unsigned int);
unsigned long long int bitExtender24(unsigned int, int);
void bitExtender40(unsigned long long int*);
int extractCoeffPOT(unsigned int, int);
int extractCoeffSign(unsigned int, int);
unsigned long long int shiftTempData (unsigned long long int, int, int);
unsigned long long int termCalc(unsigned int*, int, unsigned int*, int, int, int, int);

int readFile(char path[], int size, unsigned int array[])//Read data files in
{
    FILE *f;
    f = fopen(path, "r");
    if (f == NULL)
    {
        printf("File doesnt exist.\n");
        return 1;
    }
    int i;
    for(i = 0; i < size; i++)
    {
        fscanf(f, "%x", &array[i]);
    }
    fclose(f);
    return 0;
}

int readOutCompare(char path[], int size, unsigned long long int array[])//read a provided output for comparison to the computed output
{
    FILE *f;
    f = fopen(path, "r");
    if (f == NULL)
    {
        printf("File doesnt exist.\n");
        return 1;
    }
    int i;
    for(i = 0; i < size; i++)
    {
        fscanf(f, "%010llX", &array[i]);
    }
    fclose(f);
    return 0;
}

void writeFile(char path[], int size, unsigned long long int array[])//write output to file
{
    FILE *f;
    f = fopen(path, "w");
    int i;
    for(i = 0; i < size; i++)
    {
	    fprintf(f, "%010llX\n", array[i]);
	}

    fclose(f);
}

int findSignBit(unsigned int data){//Finds sign bit in dataX[] values
    if( (data & 0x8000) ){
        //printf("The sign bit of 0x%04X is 1. \n", data);
        return 1;
    }
    else{
        //printf("The sign bit of 0x%04X is 0. \n", data);
        return 0;
    }

}

unsigned long long int bitExtender24(unsigned int data, int padValue){//Extend the data to 24 bits and pad the data according to positive or negative.
    unsigned long long int returnData =0;
    returnData = data & 0xFFFFFF;
    //printf("Before padding sign bit, the data 0x%04X is 0x%06llX \n", data, returnData);

    if(padValue == 1){
        returnData = returnData | 0xFFFFFFFFFFFF0000;
    }
    //printf("After padding sign bit, the data 0x%04X is 0x%06llX \n", data, returnData);
    return returnData;
}

void bitExtender40(unsigned long long int* tempDataPt){//Extend 0's at the end
    *tempDataPt = ( (*tempDataPt) << 16);

    //printf("After extending to 40 bit, the data is 0x%010llX \n", *tempDataPt);
}

int extractCoeffPOT(unsigned int h, int j){//Extract coefficient's power of two digits
    int criteria = (0x00008000 >> (j-1));
    //printf("POT criteria is %08X \n", criteria);
    int bit = 0;
    if((h & criteria ) == criteria ){
        bit = 1;
    }
    //printf("POT for %d digit of value 0x%08X is %d \n",j, h, bit);
    return bit;
}

int extractCoeffSign(unsigned int h, int j){//Extract coefficient's sign digits
    int criteria = (0x80000000 >> (j-1) );
    int bit = 0;
    if( (h & criteria) == criteria ){
        bit = 1;
    }
    //printf("Sign for %d digit of value 0x%08X is %d \n",j, h, bit);
    return bit;
}

unsigned long long int shiftTempData (unsigned long long int tempData, int j, int signBit){//Multiply data to its coefficient by shifting
    unsigned long long int shiftedTempData;
    if(signBit == 1){
        shiftedTempData = tempData  >> j;
        shiftedTempData |= 0xFFFFFFFF00000000;
    }
    else{
       shiftedTempData = (tempData >> j);
    }
    //printf("After shifting for %d bit(s), the data is 0x%010llX \n", j, shiftedTempData);
    return shiftedTempData;
}

unsigned long long int termCalc(unsigned int* coeffH, int coeffSize, unsigned int* dataX, int dataSize, int k, int n_minus_k, int coeffBits){//Calculate each h(n)x(n-k) terms
    //printf("Coefficients has %d bits. \n", coeffBits);

    unsigned long long int tempData = 0;
    unsigned long long int termResult = 0;
    int signBit = 0;//default positive

    if(n_minus_k < 0){
        return 0;
    }
    signBit = findSignBit(dataX[n_minus_k]);//Finds sign bit
    tempData = bitExtender24(dataX[n_minus_k], signBit);// Sign extend to 24-bit
    bitExtender40(&tempData);//Sign extend to 40 bit

    int j;
    for(j = 1; j <= coeffBits; j++){//calculate from 2^-1 to 2^-16 (b in multiplication)
        unsigned long long int coeffMultResult = 0;//In case of requirement of inversion.
        if(extractCoeffPOT(coeffH[k], j)){//Multiply only the Coefficients in use, skip unused one's
          coeffMultResult = shiftTempData(tempData, j, signBit);  //Multiplication of x(n-k) to one of the coefficient bit
	  if(extractCoeffSign(coeffH[k], j)){//For negative coefficients, perform 2's complement to the result     
                coeffMultResult = (~(coeffMultResult) + 1) & 0xFFFFFFFFFF; //If negative coefficient, perform 2's complement. Omit bits over 40 bits
                //printf("The result of -2^(-%d) * x(%d) is 0x%010llX \n", j, n_minus_k, coeffMultResult);
            }
            else{
                //printf("The result of 2^(-%d) * x(%d) is 0x%010llX \n", j, n_minus_k, coeffMultResult);
            }
            termResult += coeffMultResult; //Commit changes to termResult
        }
        //printf("CurrentTermResult = 0x%010llX \n\n", termResult);
    }
    //printf("Result of h(%d) * x(%d) using coefficient (0x%08X) and data (0x%04X) is (0x%010llX) \n", k, n_minus_k, coeffH[k], dataX[n_minus_k], termResult);
    return termResult;
}


#define COEFF_SIZE  256 //N+1, filter order plus one to fit array
#define DATA_SIZE 1000
#define COEFF_BITS 16

int main(int argc, char *argv[]) {


    unsigned int coeffH[COEFF_SIZE];
    unsigned int dataX[DATA_SIZE]; //We know that dataX and outY are signed. But unsigned is used here so all bits are manipulatable
    unsigned long long int outY[DATA_SIZE];


    
    if(readFile(argv[1], COEFF_SIZE, coeffH)){//Read coefficients, program stops if not found
	printf("File coefficient at %s does not exist.\n", argv[1]);
	return 1;  
    }
    
    if(readFile(argv[2], DATA_SIZE, dataX)){//Read data_in, program stops if not found
	printf("File data at %s does not exist.\n", argv[2]);
	return 1;
    }
    
    /*
    char coeffPath[100] = "/home/010/y/yx/yxf160330/CE6306/HW4/datasets/coeff.in";
    char dataPath[100] = "/home/010/y/yx/yxf160330/CE6306/HW4/datasets/data1.in";

    readFile(coeffPath, COEFF_SIZE, coeffH);
    readFile(dataPath, DATA_SIZE, dataX);
    */

    int n;
    for(n = 0; n < DATA_SIZE; n++){//1000 data to output
        unsigned long long int overallResult = 0;
        
	int k;
        for(k = 0; k < COEFF_SIZE; k++){//Each data has 256 terms to add
            unsigned long long int partialTermResult = termCalc(coeffH, COEFF_SIZE, dataX, DATA_SIZE, k, n-k, COEFF_BITS);//Record the result for one term
            //printf("Term %d result was 0x%010llX \n\n",k, partialTermResult);
            overallResult += partialTermResult;//Accumulate all terms to get the result of y(n)
        }
        overallResult &= 0xFFFFFFFFFF; //Omit contents over 40 bits
        printf("Overall result of n = %d is 0x%010llX \n\n\n", n, overallResult);
        outY[n] = overallResult;

    }

    if(argc == 5){//For output comparison. Activate when argv[4] is present
	unsigned long long int outYCompare[DATA_SIZE];
	int allRight = 1;
	//char outPathCompare[100] = "/home/010/y/yx/yxf160330/CE6306/HW4/datasets/output1.out";
	//readOutCompare(outPathCompare, DATA_SIZE, outYCompare);
	readOutCompare(argv[4], DATA_SIZE, outYCompare);
        for(n=0; n < DATA_SIZE; n++){

	  if(outY[n] != outYCompare[n]){
	    printf("Computed Y at outY[%d] (0x%010llX) differs from outYCompare[%d] (0x%010llX). \n", n, outY[n], n, outYCompare);
	    allRight = 0;
	  }

	}
	  if(allRight == 1){
	    printf("All outputs are correct. \n");
	  }
      
    }
    
    printf("Preparing output files... \n");
    writeFile(argv[3], DATA_SIZE, outY);
    //char outPath[100] = "/home/010/y/yx/yxf160330/CE6306/HW4/newOutput1.out";
    //writeFile(outPath, DATA_SIZE, outY);
    //printf("Output is ready at %s \n", outPath);
    printf("Output is ready at %s \n", argv[3]);
    

    return 0;
}
