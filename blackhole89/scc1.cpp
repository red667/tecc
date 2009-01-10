// scc1.cpp : Defines the entry point for the console application.
//

#include "stdafx.h"

int _tmain(int argc, _TCHAR* argv[])
{
	int r=0,k=0,b,c;
	int lol[25];
	int primes[25]={2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97}; //,// 101 	103 	107 	109 	113 	127 	131 	137 	139 	149 	151 	157 	163 	167 	173};
	while(++k) {
		r+=k;
		memset(lol,0,sizeof(lol));
		b=r;

		//printf(".%d\n: ",r);

		for(int i=0;i<25;++i) {
			if((b/primes[i])*primes[i] == b) {
				//printf("%d ",primes[i]);
				b/=primes[i];
				lol[i]++;
				i=-1;
			}
		}
		//printf("\n");

		c=1;
		for(int i=0;i<25;++i) {
			c*=lol[i]+1;
		}

		//printf("%d\n",c);

		if(c>500) break;
	
	}

	printf("%d\n%d\n",r,k);
	for(int i=0;i<25;++i) {
		printf("%d ",lol[i]);
	}
	return 0;
}

