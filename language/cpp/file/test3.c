#include "stdio.h"

void WriteStr(char* fn, char* str)
{
	FILE* fp;
	fp = fopen(fn, "w");
	fputs(str, fp);
	fclose(fp);
}

void main()
{
	WriteStr("t1.dat", "start");
	WriteStr("t1.dat", "end");
}