int strlen(char* str, int* quanteMaiuscole, int* quanteMinuscole);

int main(void){

	char c[] = "Mia stringa";
	int quanteMaiuscole = 0;
	int quanteMinuscole = 0;
	int ris = strlen(c, &quanteMaiuscole, &quanteMinuscole);

}