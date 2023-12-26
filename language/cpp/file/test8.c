#include "stdio.h"

void main()

{FILE *fp;

 char *s1="abc",*s2="12345";

 fp=fopen("f3.txt","wt+");

 fwrite(s2,5,1,fp);

 rewind(fp);

 fwrite(s1,3,1,fp);

fclose(fp);

}