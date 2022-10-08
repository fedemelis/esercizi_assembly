#include <stdio.h>

int somma_modulo(int* src, int lunghezza, int dst, int divisore);

int main(void) {

	int src[] = { 51, 51, 51, 51, 5751, -151, -2151, -5351, -4651, -551 };
	int dest[10];
	int ris = 0;
	ris = somma_modulo(src, 10, dest, -5);

	for (size_t i = 0; i < 10; i++)
	{
		printf("%d ", dest[i]);
	}

	printf("		%d", ris);

}