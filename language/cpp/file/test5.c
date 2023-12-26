#include "stdio.h"

void main()

{FILE *fp;

 int i,a[4]={10,20,30,40},b;

 fp=fopen("data.dat","wb");

 for(i=0;i<4;i++)

  fwrite(&a[i],sizeof(int),1,fp);

 fclose(fp);

 fp=fopen("data.dat","rb");

 fseek(fp,-2L*sizeof(int),2);

 fread(&b,sizeof(int),1,fp);

 printf("%d",b);

 fclose(fp);  

}