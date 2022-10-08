int short_mul(short* v1, short* v2, int len, int* somma);


int main(void) {

	short v1[] = { 1, 30000, 1, 30000, 1 };
	short v2[] = { 1, 6, 1, 6, 1 };
	int somma = 0;
	short_mul(v1, v2, 5, &somma);
	//short_mul(v1, v2, 5, &somma);

}