#include<stdio.h>
#include<limits.h>

int main()
{
	float A$ ,s= 0;
	A$=5;
	int i = 1;
	int a=sizeof(short);
	int b=sizeof(long);
	char c='\xff';
	while (i <= 10)
	{
		s = s + 1.0/ i;
		i++;
	}
	printf("%d\t%c",a,c);
}
