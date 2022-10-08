#include <stdio.h>

int togli_dispari(unsigned char* src, int lunghezza);

int main(void) {

	unsigned char src[] = { 1, 1, 1, 1, 1, 1 };
	int ris = togli_dispari(src, 6);

	for (size_t i = 0; i < 6; i++)
	{
		printf("%d", src[i]);
	}

	return ris;


}