#include <stdio.h>int togli_dispari(unsigned char* src, int lunghezza);int main(void) {	unsigned char src[] = { 2, 3, 4, 4, 5, 8 };	togli_dispari(src, 6);	  	for (size_t i = 0; i < 6; i++)
	{
		printf("%d ", src[i]);
	}			return;}