

int main(void) {

	char* str = "ciao io sono federico.";
	char* pointer = str;
	int quanti = 0;

	__asm{

		mov eax, pointer
		mov esi, 0
		mov ebx, 0

		trovaVocali:
		cmp [eax + esi], 0 // controllo lo 0 terminante
		je fineCiclo // esco se trovo la fine della stringa 
		cmp[eax + esi], 'a' // controllo vocali //
		je trovato
		cmp[eax + esi], 'e'
		je trovato
		cmp[eax + esi], 'i'
		je trovato
		cmp[eax + esi], 'o'
		je trovato
		cmp[eax + esi], 'u'
		je trovato // controllo vocali //
		inc esi // incremento il contatore  
		jmp trovaVocali // torno a controllare 

		trovato:
		inc esi
		inc ebx //counter
		jmp trovaVocali

		fineciclo: //fine

		mov quanti, ebx
	}

}