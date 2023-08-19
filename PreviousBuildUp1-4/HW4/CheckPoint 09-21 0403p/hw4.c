//Yu Feng and Luke Allen

#include <stdio.h>
#include <stdlib.h>
#include <string.h>




void readFile(char path[], int size, unsigned int array[])
{
    FILE *f;
    f = fopen(path, "r");
    if (f == NULL)
    {
        printf("File doesnt exist.\n");
        return;
    }
    int i;
    for(i = 0; i < size; i++)
    {
        fscanf(f, "%x", &array[i]);
    }
    fclose(f);
}

void readOutCompare(char path[], int size, unsigned long long array[])
{
    FILE *f;
    f = fopen(path, "r");
    if (f == NULL)
    {
        printf("File doesnt exist.\n");
        return;
    }
    int i;
    for(i = 0; i < size; i++)
    {
        fscanf(f, "%010llx", &array[i]);
    }
    fclose(f);
}

void writeFile(char path[], int size, unsigned long long array[])
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

int findSignBit(unsigned int data){
    if( (data & 0x8000) ){
        //printf("The sign bit of 0x%04X is 1. \n", data);
        return 1;
    }
    else{
        //printf("The sign bit of 0x%04X is 0. \n", data);
        return 0;
    }

}

unsigned long long int bitExtender24(unsigned int data, int padValue){
    unsigned long long int returnData =0;
    returnData = data & 0xFFFFFF;
    //printf("Before padding sign bit, the data 0x%04X is 0x%06llX \n", data, returnData);

    if(padValue == 1){
        returnData = returnData | 0xFFFFFFFFFFFF0000;
    }
    //printf("After padding sign bit, the data 0x%04X is 0x%06llX \n", data, returnData);
    return returnData;
}

void bitExtender40(unsigned long long int* tempDataPt){
    *tempDataPt = ( (*tempDataPt) << 16);

    //printf("After extending to 40 bit, the data is 0x%010llX \n", *tempDataPt);
}

int extractCoeffPOT(unsigned int h, int j){
    int criteria = (0x00008000 >> (j-1));
    //printf("POT criteria is %08X \n", criteria);
    int bit = 0;
    if((h & criteria ) == criteria ){
        bit = 1;
    }
    //printf("POT for %d digit of value 0x%08X is %d \n",j, h, bit);
    return bit;
}

int extractCoeffSign(unsigned int h, int j){
    int criteria = (0x80000000 >> (j-1) );
    int bit = 0;
    if( (h & criteria) == criteria ){
        bit = 1;
    }
    //printf("Sign for %d digit of value 0x%08X is %d \n",j, h, bit);
    return bit;
}
unsigned long long int shiftTempData (unsigned long long int tempData, int j, int signBit){
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

unsigned long long int termCalc(unsigned int* coeffH, int coeffSize, unsigned int* dataX, int dataSize, unsigned long long int* partialTermResult, int k, int n_minus_k, int coeffBits){
    //printf("Coefficients has %d bits. \n", coeffBits);

    unsigned long long int tempData = 0;
    unsigned long long int termResult = 0;
    int signBit = 0;//default positive

    if(n_minus_k < 0){
        return 0;
    }
    signBit = findSignBit(dataX[n_minus_k]);
    tempData = bitExtender24(dataX[n_minus_k], signBit);
    bitExtender40(&tempData);

    int j = 1;
    for(j = 1; j <= coeffBits; j++){//calculate from 2^-1 to 2^-16 (b in multiplication)
        unsigned long long int coeffMultResult = 0;//In case of requirement of inversion.
        if(extractCoeffPOT(coeffH[k], j)){

            if(extractCoeffSign(coeffH[k], j)){
                coeffMultResult = shiftTempData(tempData, j, signBit);
                coeffMultResult = (~(coeffMultResult) + 1) & 0xFFFFFFFFFF; //If negative coefficient, perform 2's complement. Omit bits over 40 bits
                //printf("The result of -2^(-%d) * x(%d) is 0x%010llX \n", j, n_minus_k, coeffMultResult);
            }
            else{
                coeffMultResult = shiftTempData(tempData, j, signBit);
                //printf("The result of 2^(-%d) * x(%d) is 0x%010llX \n", j, n_minus_k, coeffMultResult);
            }

            termResult += coeffMultResult; //Commit changes to termResult

        }
        //printf("CurrentTermResult = 0x%010llX \n\n", termResult);
    }
    //termResult &= 0xFFFFFFFFFF;

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
    unsigned long long int outYCompare[DATA_SIZE];

    /*
    readFile(argv[1], COEFF_SIZE, coeffH);
    readFile(argv[2], DATA_SIZE, dataX);
    */
    char coeffPath[40] = "E:\\CE6306\\HW4\\coeff.in";
    char dataPath[40] = "E:\\CE6306\\HW4\\data1.in";
    char outPathCompare[40] = "E:\\CE6306\\HW4\\output1.out";
    readFile(coeffPath, COEFF_SIZE, coeffH);
    readFile(dataPath, DATA_SIZE, dataX);
    readOutCompare(outPathCompare, DATA_SIZE, outYCompare);


    int n = 0;
    for(n = 0; n < DATA_SIZE; n++){//1000 data to output


        unsigned long long int overallResult = 0;
        int k = 0;
        for(k = 0; k < COEFF_SIZE; k++){//Each data has 256 terms to add
            unsigned long long partialTermResult = termCalc(coeffH, COEFF_SIZE, dataX, DATA_SIZE, partialTermResult, k, n-k, COEFF_BITS);
            //printf("Term %d result was 0x%010llX \n\n",k, partialTermResult);
            overallResult += partialTermResult;
        }
        overallResult &= 0xFFFFFFFFFF; //Omit contents over 40 bits
        printf("Overall result of n = %d is 0x%010llX \n\n\n", n, overallResult);
        outY[n] = overallResult;

    }


    int allRight = 1;
    for(n=0; n < DATA_SIZE; n++){

        if(outY[n] != outYCompare[n]){
            printf("Computed Y at outY[%d] (0x%010llX) differs from outYCompare[%d] (0x%010llX). \n", n, outY[n], n, outYCompare);
            allRight = 0;
        }

    }
    if(allRight == 1){
        printf("All outputs are correct. \n");
    }


    //writeFile(argv[3], DATA_SIZE, outY);

    printf("Preparing output files... \n");
    char outPath[40] = "E:\\CE6306\\HW4\\newOutput1.out";
    writeFile(outPath, DATA_SIZE, outY);
    printf("Output is ready at %s \n", outPath);
    //Print array to console
    // for (int i = 0; i < DATA_SIZE ; i++)
    // {
    //     printf("%08x\n", data[i]);
    // }



    return 0;
}
