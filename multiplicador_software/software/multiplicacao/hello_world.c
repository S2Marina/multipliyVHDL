#include <stdio.h>

int main()
{
	int i, resp =0;
	int M = 10;
	int m = 1000;

	for(i=1;i<=m;i++){
		resp += M;
	}

	printf("Resultado da multiplicacao %i x %i = %i\n", m, M, resp);

	return 0;
}
