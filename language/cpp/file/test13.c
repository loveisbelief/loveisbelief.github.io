#include "stdio.h"
#include<math.h>
struct student
{
	char name[14];
	float score;
}stu;
main()
{
	float t=0;
	int i=0;
	char n[10];
	FILE* f;
	if ((f = fopen("a.txt", "r")) == NULL)
	{
		printf("cannot open outfile!\n");
		exit(0);
	}
//	for(;i<25;i++)
//	{
//		sprintf(n,"hohowhow%d",i);
//		for(int j=0;j<=strlen(n)+1;j++){
//			stu[i].name[j]=n[j];
//		}
//		t=1+pow(2,-(i));
//		stu[i].score=t;
//		fwrite(&stu[i],sizeof(struct student),1L,f);
//		printf("%s\t%.24f\n",stu[i].name,t);
//	}
//
//	double i;
//	for(i=0;i<1;i++)
//	{
//		fwrite(&stu,sizeof(struct student),1L,f);
//	}
	while (!feof(f))
	{
		fread(&stu, sizeof(struct student), 1, f);
		printf("%s,%.20f\n", stu.name, stu.score);
	}
	fclose(f);
}
