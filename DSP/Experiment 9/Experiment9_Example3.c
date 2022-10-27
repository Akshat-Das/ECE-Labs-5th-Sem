# include<stdio.h>
int m,n,x[30],h[30],y[30],i,j,temp[30],k,x2[30],a[30]; 
main()
{
printf("Enter the legth of input sequence\n"); 
scanf("%d",&m);
printf("Enter the legth of impulse response\n"); 
scanf("%d",&n);
printf("Enter the input sequence x[n]\n"); 
for(i=0;i<m;i++)
scanf("%d",&x[i]);
printf("Enter the impulse reponse sequence h[n]\n"); 
for(i=0;i<m;i++)
scanf("%d",&h[i]);
if((m-n)!=0) 
{
if(m>n) 
{
for(i=n;i<m;i++) 
h[i]=0;
n=m;
}
for(i=m;i<n;i++) 
x[i]=0;
m=n;
} 
y[0]=0;
a[0]=h[0];
for(j=1;j<n;j++) 
a[j]=h[n-j];
for(i=0;i<n;i++) 
y[0]=y[0]+x[i]*a[i]; 
for(k=1;k<n;k++)
{
y[k]=0;
for(j=1;j<n;j++) 
x2[j]=a[j-1];
x2[0]=a[n-1];
for(i=0;i<n;i++)
{
a[i]=x2[i]; 
y[k]=y[k]+x[i]*x2[i];
}
}
printf("Circular convolution is: \n"); 
for(i=0;i<n;i++)
printf("%d\t",y[i]);
}