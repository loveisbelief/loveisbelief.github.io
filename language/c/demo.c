#include<stdio.h>
#include<stdlib.h>

typedef struct book{
	char isbn[13];
	char name[30];
	float price;
	char author[10];
	char publish[22];
	struct book*pb;
}lBook;
int main(){
	int position,first=1,i,j,size=3;
	char c;
	FILE*fp;
	lBook * Head,*lb,*tl;
	printf("Input position:\n");
	scanf("%d",&position);
	fp=fopen("file.txt","r");
	if(fp==NULL){
		printf("read a file error!");
	}
	else{
		for(i=1;i<=size;i++){
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
		for(i=1;i<=position;i++){
			if(i==position){
				if(i==1)
					Head=lb->pb;
				else
					tl->pb=lb->pb;
				free(lb);
			}
			else{
				tl=lb;
				lb=lb->pb;
			}
		}
		if(position<=3&&position>=1)
		{
			lb=Head;
			printf("Information deleted successfully,Updated linked list is:\n");
			for(i=1;i<=size-1;i++){
				printf("ISBN:%s,Name:%s,Price:%f,Author:%s,publish:%s\n",Head->isbn,
					Head->name,Head->price,Head->author,Head->publish);
				Head=Head->pb;
				free(lb);
				lb=Head;
			}
		}
		else
			printf("Information deleted failed");
		fclose(fp);
	}
	return 0;
}
