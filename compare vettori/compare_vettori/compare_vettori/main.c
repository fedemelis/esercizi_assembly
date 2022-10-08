void compare_vec(int* v1, int* v2, int vRis, int size);

int main(void) {

	int v1[] = { 1, 2, 3, 4, 5 };
	int v2[] = { 1, 2, 3, 4, 5 };

	int vRis[] = { 0, 0, 0, 0, 0 };

	compare_vec(v1, v2, vRis, 5);

}