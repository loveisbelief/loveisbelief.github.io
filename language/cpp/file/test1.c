#include <stdio.h>
main()
{
char *s= "That 's good news ";
int i=617;
FILE *fp;
fp=fopen( "test1.dat ", "w");
fputs( "Your score of TOEFL is ", fp);
fputc( ': ', fp);
fprintf(fp, "%d\n ", i);
fprintf(fp, "%s ", s);
fclose(fp);
}