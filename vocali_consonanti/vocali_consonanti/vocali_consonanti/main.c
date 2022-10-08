int conta_vocali_consonanti(unsigned char* src, int* dstV, int* dstC);

int main(void) {

	unsigned char src[] = "dwhauywhaoJIEj";
	int dstV = 0;
	int dstC = 0;

	int ris = conta_vocali_consonanti(src, &dstV, &dstC);
	return ris;
}