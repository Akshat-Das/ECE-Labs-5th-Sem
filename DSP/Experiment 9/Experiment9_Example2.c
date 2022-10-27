# include<stdio.h>
int y[10]={1,2,3,4,0,0,0,0};
main()
{
	int m=4; 
	int n=4; 
	int i=0,j;
	int x[10]={1,2,3,4,0,0,0,0};
	int h[10]={1,2,3,4,0,0,0,0};
	for(i=0;i<(m+n-1);i++)
	{ 
		y[i]=0;
		for(j=0;j<=i;j++) 
			y[i]=y[i]+x[j]*h[i-j];
	}
	for(i=0;i<(m+n-1);i++)
	printf("%d\n",y[i]);
}