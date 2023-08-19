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
// Note: I'm not sure how you will need to use these, but you can either pass by value or pass by reference
void decodeCoeff(unsigned int n)
{
    int sign = (n & 0x100) >> 8;
    int value = n & 0xFF;
    if(sign)
        sign = -1;
    else
        sign = 1;
}

#define DATA_SIZE 512
#define RJ_SIZE 16

int main(int argc, char *argv[]) {

    int coeffSize = fileSize(argv[1]);
    unsigned int coeffH[fileSize(argv[1])];
    unsigned int rj[RJ_SIZE];
    unsigned int dataX[DATA_SIZE]; //We know that dataX and outY are signed. But unsigned is used here so all bits are manipulatable
    unsigned long long int outY[DATA_SIZE];

    if(readFile(argv[1], coeffSize, coeffH)){//Read coefficients, program stops if not found
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

    // Print array
    // for(int i = 0; i < coeffSize; i++)
    //     printf("%x\n", coeffH[i]);

    printf("Preparing output files... \n");
    writeFile(argv[4], DATA_SIZE, outY);
    printf("Output is ready at %s \n", argv[4]);
    

    return 0;
}