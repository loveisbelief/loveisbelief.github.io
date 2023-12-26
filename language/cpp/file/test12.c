#include "stdio.h"
struct student
{
	char name[10];
	float score;
}stu;
main()
{
	FILE* f;
	if ((f = fopen("a.txt", "rt")) == NULL)
	{
		printf("cannot open outfile!\n");
		exit(0);
	}
	while (!feof(f))
	{
		fread(&stu, sizeof(struct student), 1, f);
		printf("%s,%.2f\n", stu.name, stu.score);
	}
	fclose(f);
	getch(); 
}
