int togli_dispari(unsigned char* src, int lunghezza);

int main(void) {

	unsigned char c[] = { 2, 2, 3, 4 };
	int lunghezza = 4;
	togli_dispari(c, lunghezza);
	togli_dispari(c, lunghezza);

}