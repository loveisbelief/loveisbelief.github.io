#include "stdio.h"

void main()
{
    FILE *fp1;
    fp1 = fopen("f1.txt", "a");
    fprintf(fp1, "abc");
    fclose(fp1);
}
