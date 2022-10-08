#include <stdio.h>

int somma_modulo(int* src, int lunghezza, int* dst, int divisore);

int main(void) {

	int src[10] = { 2,12,-22,2,52,-72,-42,-32,-42,-52 };
	int dst[10];
	int ret = 0;
	printf("Somma = % d", somma_modulo(src, 10, dst, -5));
}