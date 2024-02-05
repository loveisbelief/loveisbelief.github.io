#include<iostream>
#include <string>
using namespace std;
int main()
{
	char a[2][2]={{'x','y'},{'z','\0'}};
	cout<<strlen(a[0])<<endl<<" "<<a[0]<<endl;
    return 0;
}
