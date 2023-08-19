//Yu Feng and Luke Allen

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int fileSize(char path[])//Get # of lines in file
{
    FILE *f;
    f = fopen(path, "r");
    if (f == NULL)
    {
        printf("File doesnt exist.\n");
        return 1;
    }

    char c;
    int size = 1;
    for (c = getc(f); c != EOF; c = getc(f)){
        if (c == '\n') // count number of newline characters
            size = size + 1;
    }

    // printf("The file has %d lines\n ", size);
    fclose(f);
    return size;
}

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

// Function to extract sign and value from coefficient

void decodeCoeff(unsigned int coeff, unsigned int* sign, unsigned int* value)
{
    *sign = (coeff & 0x0100) >> 8;
    //printf("Coefficient sign of %03X is %d \n", coeff, *sign);
    *value = coeff & 0x00FF;
    //printf("Coefficient value of %03X is %d \n", coeff, *value);
}
unsigned long long int calculateUj(int n, int j, unsigned int* dataX, unsigned int* coeff, int startPoint, int endPoint){
    unsigned long long int Uj = 0;
    int i;
    for(i = startPoint; i < endPoint; i++){
        unsigned int coeffSign, coeffValue;
        decodeCoeff(coeff[i], &coeffSign, &coeffValue);
        int dataIndex = n - coeffValue;
        if(dataIndex < 0){//For all negative indexes of x, dataX = 0
            Uj += 0;
        }
        else{
            unsigned long long int processedData = bitExtender24(dataX[dataIndex], findSignBit(dataX[dataIndex]));//Extend data to 24-bit with sign padded
            processedData = processedData << 40;//So that 24 bits occupies MSB's

            if(coeffSign == 1){//Negative Coefficient requires 2's complement before addition
                processedData = (~(processedData) + 1) ;
                //printf("ProcessData is %016llX \n", processedData);
                Uj = Uj +  processedData;
            }
            else{//Positive coefficient means direct addition
                //printf("ProcessData is %016llX \n", processedData);
                Uj = Uj + processedData;
            }
        //
        }
    }




    return Uj;
}


void shiftResultRight1Bit(unsigned long long int* numPtr){
    if(*numPtr&0x8000000000000000){
        //printf("Passed in number %010llX is negative. \n", *numPtr);
        *numPtr = (*numPtr >> 1) | 0x8000000000000000;//Padding signed bit that may introduce 0
        //printf("Padded number after shifting is %016llX \n", *numPtr);
    }
    else{
        //printf("Passed in number %010llX is positive. \n", *numPtr);
        *numPtr = (*numPtr >> 1) ;//Padding signed bit that may introduce 0
        //printf("Number after shifting is %016llX \n", *numPtr);
    }
}

#define DATA_SIZE 512
#define RJ_SIZE 16

int main(int argc, char *argv[]) {

    /*
    int coeffSize = fileSize(argv[1]);
    unsigned int coeff[fileSize(argv[1])];
    */
    char coeffPath[100] = "E:\\CE6306\\HW5\\datasets\\Coeff1.in";
    int coeffSize = fileSize(coeffPath);
    unsigned int* coeff = (unsigned int*) calloc(coeffSize, sizeof(unsigned int));//Dynamically allocate memory to store coeff.
    if(coeff == NULL){
        printf("Memory for coeff not allocated. \n");
        return 1;
    }
    else{
        printf("Dynamically allocated coefficient array has %d elements.\n", coeffSize);
    }

    unsigned int rj[RJ_SIZE];
    unsigned int dataX[DATA_SIZE]; //We know that dataX and outY are signed. But unsigned is used here so all bits are manipulatable
    unsigned long long int outY[DATA_SIZE];

    /*
    if(readFile(argv[1], coeffSize, coeff)){//Read coefficients, program stops if not found
	printf("File coefficient at %s does not exist.\n", argv[1]);
	return 1;
    }

    if(readFile(argv[2], RJ_SIZE, rj)){//Read data_in, program stops if not found
	printf("File Rj at %s does not exist.\n", argv[2]);
	return 1;
    }

    if(readFile(argv[3], DATA_SIZE, dataX)){//Read data_in, program stops if not found
	printf("File data at %s does not exist.\n", argv[3]);
	return 1;
    }
    */



    char rjPath[100] = "E:\\CE6306\\HW5\\datasets\\Rj1.in";
    char dataPath[100] = "E:\\CE6306\\HW5\\datasets\\data1.in";

    readFile(coeffPath, coeffSize, coeff);
    readFile(rjPath, RJ_SIZE, rj);
    readFile(dataPath, DATA_SIZE, dataX);

    int n;
    for(n = 0; n < DATA_SIZE; n++){//512 data to output
        unsigned long long int overallResult = 0;

        int j;
        int prevRj = 0;
        for(j = 0; j < RJ_SIZE; j++){//Terms to calculate in uj
            unsigned long long int currentResult = 0;
            currentResult = calculateUj(n,j, dataX, coeff, prevRj, rj[j] + prevRj);//Pass in traverse range [prevUj, rj[j] + prevUj). Accumulate all terms to add in a single Uj
            //printf("u_%d is %010llX \n", j+1, currentResult);

            overallResult = overallResult + currentResult;//previousResult + currentResult

            shiftResultRight1Bit(&overallResult);//Pads if negative result
            //printf("u_%d after shifting and adding with previous terms is %016llX \n", j+1, overallResult);


            prevRj = prevRj + rj[j];//For the next iteration, set start index to traverse.
        }
        outY[n] = overallResult >> 24;
        printf("y(%d) is %010llX \n\n",n, outY[n]);


    }



    printf("Verifying outputs... \n");
	unsigned long long int outYCompare[DATA_SIZE];
	int allRight = 1;
	char outPathCompare[100] = "E:\\CE6306\\HW5\\datasets\\data1.out";
	readOutCompare(outPathCompare, DATA_SIZE, outYCompare);
	//readOutCompare(argv[4], DATA_SIZE, outYCompare);
    for(n=0; n < DATA_SIZE; n++){
	  if(outY[n] != outYCompare[n]){
	    printf("Computed Y at outY[%d] (0x%010llX) differs from outYCompare[%d] (0x%010llX). \n", n, outY[n], n, outYCompare);
	    allRight = 0;
	  }

	}
	  if(allRight == 1){
	    printf("All outputs are correct. \n\n");
	  }

    printf("Preparing output files... \n");
    char outPath[100] = "E:\\CE6306\\HW5\\datasets\\newOutput1.out";
    writeFile(outPath, DATA_SIZE, outY);
    printf("Output is ready at %s \n", outPath);

    printf("Freeing memory \n");
    free(coeff);
    return 0;
}
