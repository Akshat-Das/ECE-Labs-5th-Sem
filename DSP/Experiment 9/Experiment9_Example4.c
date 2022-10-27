#include<stdio.h> 
int b=0;
int y[24]={1,2,3,4,5,6,7,8,9,10,1,2,3,4,5,6,7,8,9,10,1,2,3,4};
main()
{
int k=0,i=0,j=0; 
for(j=0;j<6;j++)
{
for(i=0;i<4;i++)
{
y[k]=b; 
k++;
}
b=b+1;
}
}

