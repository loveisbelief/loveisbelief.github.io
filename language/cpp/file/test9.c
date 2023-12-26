#include "stdio.h"

int main()
{
	FILE *fp;	
	char ch;	
	if((fp=fopen("test","rt"))==NULL)		
	{printf("File not open.");exit(0);}	
	while(ch=fgetc(fp)&&!feof(fp))	
		putchar(ch);
	fclose(fp);
}


