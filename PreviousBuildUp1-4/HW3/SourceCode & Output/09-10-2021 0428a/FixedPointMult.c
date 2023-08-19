//Yu Feng and Luke Allen

#include <stdio.h>
#include <stdlib.h>
void praseCommandArg(char**, unsigned int*, unsigned int*);
unsigned int bitExtract(unsigned int, unsigned int);
void fixedPointMult(unsigned int, unsigned int, unsigned int*);

void praseCommandArg(char* argv[], unsigned int* a, unsigned int* b){
    printf("Input arguments are: %s, %s \n", argv[1], argv[2]);
    *a = (unsigned int) strtoul(argv[1], NULL, 16);
    *b = (unsigned int) strtoul(argv[2], NULL, 16);
    printf("Parsed value a is 0x%08X \n", *a);//Shows with leading 0, 8 positions required for 32-bit numbers in Hex
    printf("Parsed value b is 0x%08X \n", *b);
}
unsigned int bitExtract(unsigned int bOp, unsigned int currentBit){
    unsigned int extractVal = (bOp >> (32 - currentBit) )&0x00000001;//Push b to the right by shifting right, then AND with 1 to extract the number.
    //printf("Bit %d of value b (0x%08X) is %d \n", currentBit, bOp, extractVal);
    return extractVal;
}

void fixedPointMult(unsigned int a, unsigned int b, unsigned int* result){
    unsigned int y = 0, i;
    unsigned int totalBitsShifted = 0;
    for (i = 1; i <= 32; i++){
        if(bitExtract(b, i) == 1){
            y = y + (a >> i);
	    totalBitsShifted += i;
        }
    }
    if(totalBitsShifted > 32){
      printf("Warning! Underflow may have occured as total bits shifted is %d , greater than 32-bits. \n", totalBitsShifted);
    }
    //printf("The multiplication result is 0x%08X \n", y);
    *result = y;
}

int main(int argc, char *argv[])
{
    unsigned int result = 0;
    unsigned int a, b = 0;
    /*Test variables, to be changed from testArgv to argv*/
    //char* testArgv[] = {};
    //testArgv[1] = "0x80000000"; //Binary 0.1000 0000
    //testArgv[2] = "0x40000000"; //Binary 0.0100 0000, Result should be 0.0010 0000 (0x20000000)
    praseCommandArg(argv, &a, &b);

    //printf("Hello world!\n");
    //printf("Parsed value a is 0x%08X \n", a);
    //printf("Parsed value b is 0x%08X \n", b);
    fixedPointMult(a,b, &result);
    printf("The multiplication result is 0x%08X \n", result);

    return 0;
}
