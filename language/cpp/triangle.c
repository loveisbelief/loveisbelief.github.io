#include <stdio.h>
#include <math.h>
int main()

{
    float a, b, c;
    printf("请输入三角形边长：\n");
    scanf("%f%f%f", &a, &b, &c);
    if (a + b < c || a + c < b || b + c < a)
        printf("不能够成三角形\n");
    else if (a * a + b * b == c * c || b * b + c * c == a * a || c * c + a * a == b * b)
        if ((a == b) || (b == c) || (c == a))
            printf("等腰直角三角形\n");
        else
            printf("直角三角形\n");
    else if (a==b&&b==c)
        printf("等边三角形\n");
    else if (a==b||b==c||c==a)
        printf("等腰三角形\n");
    else
        printf("一般三角形\n");
}