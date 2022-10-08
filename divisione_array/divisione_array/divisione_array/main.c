#include <stdio.h>

int divisione_array(int* src, int divisore, int lunghezza, int* resto);

int main(void) {

	int src[3] = { 1, 2, 1 };
	int resto[3];
	//divisione_array(src, 3, 3, resto);

	printf("%d", divisione_array(src, 3, 3, resto));

}