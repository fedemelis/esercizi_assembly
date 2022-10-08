#include <stdio.h>

int conta_vocali_consonanti(unsigned char* src, int* dstV, int* dstC);

int main(void) {

	char src[255] = "AAAAA";
	int dstV = 0;
	int dstC = 0;
	int ret = 0;
	ret = conta_vocali_consonanti(src, &dstV, &dstC);

	printf("Vocali=%d	Consonanti=%d\n", dstV, dstC);

	return ret;
}