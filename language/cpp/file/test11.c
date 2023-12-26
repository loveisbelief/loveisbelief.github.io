#include "stdio.h"

int main()

{	
	FILE *fp,*fp1,*fp2;	
	char ch,s[200],t;    int i,j,n=0;	
	if((fp1=fopen("A","r"))==NULL) {printf("File not open.");exit(0);}	
	if((fp2=fopen("B","r"))==NULL) {printf("File not open.");exit(0);}	
	if((fp=fopen("C","w"))==NULL) {printf("File not open.");exit(0);}	
	while(!feof(fp1))
	{
		printf("%d\n", feof(fp1));
		s[n++] = fgetc(fp1);
	}
	printf("%d\n", feof(fp1));
	while(!feof(fp2))
		s[n++]=fgetc(fp2);
	for(i=0;i<n-1;i++)		
		for(j=i+1;j<n;j++)			
			if(s[i]>s[j]){t=s[i];s[i]=s[j];s[j]=t;}	
	fputs(s,fp);	
	fclose(fp);fclose(fp1);fclose(fp2);   	
}
