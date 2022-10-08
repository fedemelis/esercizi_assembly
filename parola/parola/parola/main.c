#include <stdio.h>

int checkparola(char* stringa);



void main() {

	unsigned char* stringa;
	int ris;

	stringa = "CINNO";
	printf("stringa di input: %s \n", stringa);
	ris = checkparola(stringa);
	printf("valore di ritorno: %d \n\n", ris);

	stringa = "COSA";
	printf("stringa di input: %s \n", stringa);
	ris = checkparola(stringa);
	printf("valore di ritorno: %d \n\n", ris);

	stringa = "ABCDE";
	printf("stringa di input: %s \n", stringa);
	ris = checkparola(stringa);
	printf("valore di ritorno: %d \n\n", ris);


	stringa = "No!";
	printf("stringa di input: %s \n", stringa);
	ris = checkparola(stringa);
	printf("valore di ritorno: %d \n\n", ris);

}