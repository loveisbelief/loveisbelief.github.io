#include "stdio.h"

typedef struct
{char xm[20];	
	int n;	
	char zz[40];	
}XS;

void main()
{
	XS a[3];
	int i;
	FILE *fp;	
	if((fp=fopen("ex1.dat","rb"))==NULL)		
	{printf("File not open.");exit(0);}	
	fread(a,sizeof(XS),3L,fp);	
	for(i=0;i<3;i++)		
		printf("%s,%d,%s\n",a[i].xm,a[i].n,a[i].zz);	
	fclose(fp);	
}
