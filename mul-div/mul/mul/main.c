int mul8(unsigned char a, unsigned char b);
int imul8(char a, char b);
int mul16(unsigned short a, unsigned short b);
int imul16(short a, short b);
int mul32(unsigned int a, unsigned int b);
int imul32(int a, int b);

int main(void) {

	int ris = 0;
	ris = imul32(10000, -3);
	return ris;
}