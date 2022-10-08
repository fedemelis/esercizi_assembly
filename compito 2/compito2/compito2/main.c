int somma_modulo(int* src, int lunghezza, int* dst, int divisore);

int main(void) {


	int src[] = { 4, 2, 7, 0, 2 };
	int dest[] = { 0, 0, 0, 0, 0 };
	return somma_modulo(src, 5, dest, 2);
	


}