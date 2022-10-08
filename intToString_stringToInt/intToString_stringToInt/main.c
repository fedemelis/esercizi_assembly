int intToString(int *i, char *c, int l);

int stringToInt(char* c, int *i, int l);

int main(void) {


	int v1[] = { 1, 2, 3 };
	char c1[3] = "abc";
	/*intToString(v1, c1, 3);
	intToString(v1, c1, 3);*/
	stringToInt(c1, v1, 3);

}