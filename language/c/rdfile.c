#include<stdio.h>
#include<stdlib.h>
#include<string.h>
typedef struct book{
	char isbn[13];
	char name[30];
	float price;
	char author[10];
	char publish[22];
	struct book*pb;
}lBook;
int main(){
	int first=1,i,j,size=3;
	int found=0;
	char c;
	char s[100];
	FILE*fp;
	lBook * Head,*lb,*tl;
	printf("Input bookName:");
	gets(s);
	fp=fopen("file.txt","r");
	if(fp==NULL){
		printf("read a file error!");
	}
	else{
		for(i=0;i<size;i++){
			Head=(lBook*)malloc(sizeof(lBook));
			do{
				c=fgetc(fp);
			}while(c!=':'&&c!='£º');
			while(c==':'||c=='£º')
			{
				j=0;
				do
				{
					c=fgetc(fp);
					Head->isbn[j++]=c;
				}
				while(c!=','&&c!='£¬');
				Head->isbn[--j]='\0';
			}
			do{
				c=fgetc(fp);
			}while(c!=':'&&c!='£º');
			while(c==':'||c=='£º')
			{
				j=0;
				do
				{
					c=fgetc(fp);
					Head->name[j++]=c;
				}
				while(c!=','&&c!='£¬');
				Head->name[--j]='\0';
			}
			do{
				c=fgetc(fp);
			}while(c!=':'&&c!='£º');
			fscanf(fp,"%f",&Head->price);
			do{
				c=fgetc(fp);
			}while(c!=':'&&c!='£º');
			while(c==':'||c=='£º')
			{
				j=0;
				do
				{
					c=fgetc(fp);
					Head->author[j++]=c;
				}
				while(c!=','&&c!='£¬');
				Head->author[--j]='\0';
			}
			do{
				c=fgetc(fp);
			}while(c!=':'&&c!='£º');
			while(c==':'||c=='£º')
			{
				j=0;
				do
				{
					c=fgetc(fp);
					Head->publish[j++]=c;
				}
				while(c!='\r'&&c!='\n'&&c!=EOF);
				Head->publish[--j]='\0';
			}
			if(first)
			{
				tl=lb=Head;
				first=0;
			}
			else
			{
				tl->pb=Head;
				tl=tl->pb;
			}
		}
		tl->pb=NULL;
		Head=lb;
		for(i=0;i<size;i++){
			if(strcmp(lb->name,s))
			{
				lb=lb->pb;
			}
			else{
				found=1;
				tl=lb;
				break;
			}
		}
		if(found)
		{
			printf("ISBN:%s,Name:%s,Price:%f,Author:%s,publish:%s\n",tl->isbn,tl->name,tl->price,tl->author,tl->publish);
		}
		else
			printf("information search failed\n");
		lb=Head;
		for(i=1;i<=size-1;i++){
			Head=Head->pb;
			free(lb);
			lb=Head;
		}
		fclose(fp);
	}
	return 0;
}
