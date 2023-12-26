#include "stdio.h"

void main()

{FILE *fp;

 char *s1="abc",*s2="12345";

 fp=fopen("f2.txt","wb+");

 fwrite(s2,5,1,fp);

 rewind(fp);

 fwrite(s1,3,1,fp);

fclose(fp);

}