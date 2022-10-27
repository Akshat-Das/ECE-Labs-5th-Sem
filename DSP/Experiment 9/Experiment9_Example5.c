#include<stdio.h>
int res[32]={1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5};
main()
{
int i=0,on[7]={0},off[2]={0},j,k=0,l,m,n; 
for(j=0;j<4;j++)
{ 
m=0; 
n=3;
for(l=0;l<8;l++)
{
if(l<5)
{
res[k]=m++; 
printf("%d\n",res[k]); 
k++;
}
else
{
res[k]=n--;
printf("%d\n",res[l]); 
k++;
}
}
} 
k++;
}