#include "stdio.h"

void main()
{
	FILE* fp; int i, k, n;
	fp = fopen("data.dat", "w+");
	for (i = 1; i < 6; i++)
	{
		fprintf(fp, "%d", i);
		if (i % 3 == 0)fprintf(fp, "\n");
	}
	rewind(fp);
	fscanf(fp, "%d%d", &k, &n);
	printf("%d   %d", k, n);
	fclose(fp);
}