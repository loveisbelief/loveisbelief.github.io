#include <stdio.h>
#include <math.h>

int main( )
{
	float  x , y , z ;
	scanf("%f,%f", &x , &y ) ;//scanf("%f,%f ", &x , &y ) ˫����֮�󣬾�Ȼ���ܶ�ӿո� 
	z = x / y ;
	while( 1 )
	{
		if ( fabs(z) > 1.0 )
		{ x = y ;  y = z ;  z = x/y ; }
		else
			break ;
	}
	printf( "%5.2f\n " , y ) ;
	return 0;
}
