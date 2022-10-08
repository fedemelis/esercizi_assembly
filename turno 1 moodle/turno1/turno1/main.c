#include <stdio.h>
int divisione_array(int* src, int divisore, int lunghezza, int* resto);


int main(void) {

	int src[] = { -2, 4, 7, -80, 4 };
	int resto[] = { 0, 0, 0, 0, 0 };
	int lunghezza = 5;

	return divisione_array(src, 2, lunghezza, resto);
	//divisione_array(src, 2, lunghezza, resto);

	
}

