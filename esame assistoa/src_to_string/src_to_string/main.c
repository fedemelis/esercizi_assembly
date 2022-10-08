#include <stdio.h>
int assitoa(int src, int sng, char* stringa);

int main(void) {

	char stringa[255];
	int src = 123;
	int sng = 0;

	assitoa(src, sng, stringa);
	printf("%s", stringa);
	assitoa(src, sng, stringa);

}