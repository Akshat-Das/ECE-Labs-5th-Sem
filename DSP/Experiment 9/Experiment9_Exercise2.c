#include<stdio.h>
#include<math.h>
float i,a[50];
int j=0;
main()
{
 for(i=0;i<0.6;)
 {
	a[j] = sin(2*3.14*500*i)+ sin(2*3.14*750*i)+sin(2*3.14*1000*i);
	j++;
	i+= 0.001;
 }
}

