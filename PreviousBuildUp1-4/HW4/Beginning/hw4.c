//Yu Feng and Luke Allen

#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void readFile(char path[], int size, int array[])
{
    FILE *f;
    f = fopen(path, "r");
    if (f == NULL)
    {
        printf("File doesnt exist.\n");
        return;
    }

    for(int i = 0; i < size; i++)
    {
        fscanf(f, "%x", &array[i]);
    }
    fclose(f);
}

void writeFile(char path[], int size, int array[])
{
    FILE *f;
    f = fopen(path, "w");

    for(int i = 0; i < size; i++)
    {
	    fprintf(f, "%x\n", array[i]);
	}

    fclose(f);
}

int main(int argc, char *argv[]) {

    unsigned int coeff[256];
    int data[1000];
    int out[1000];

    readFile(argv[1], 256, coeff);
    readFile(argv[2], 1000, data);

    writeFile(argv[3], 1000, data);

    //Print array to console
    // for (int i = 0; i < 1000 ; i++)
    // {
    //     printf("%08x\n", data[i]);
    // }

    return 0;
}