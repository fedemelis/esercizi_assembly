#include <stdio.h>
int assitoa(int src, int sgn, char* stringa);

int main(void) {

	char stringa[255];
	int ret = 0;
	ret = assitoa(123, 0, stringa);
	printf("%s", stringa);
	return ret;


}