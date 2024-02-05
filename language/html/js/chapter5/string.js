var str=prompt("请输入一串字符：");
var len=str.length;
var i,numStr="";
for(i=0;i<len;i++)
{
	if(str[i]>='0'&&str[i]<='9')
	{
		numStr+=str[i];
	}
}
document.write(numStr);