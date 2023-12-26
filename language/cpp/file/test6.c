#include "stdio.h"

void main()

{
    FILE *fp;

    int a[10], i;

    fp = fopen("1.dat", "rb");

    fread(a, sizeof(int), 5, fp);

    fread(a, sizeof(int), 5, fp);

    for (i = 0; i < 5; i++)

        printf("%d ", a[i]);

    fclose(fp);
}