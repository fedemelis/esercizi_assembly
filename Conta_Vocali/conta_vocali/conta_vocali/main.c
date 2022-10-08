int main(void)
{
	char* str = "ciao a tutti";
	char* point = str;
	__asm
	{
		mov eax, point
		mov ebx, 0
		mov esi, 0
		
		trovaVocali:
		cmp [eax + esi], 0 //controllo per lo 0 terminante
		je fine

		cmp [eax + esi], 'a' //ricerca vocali
		je trovato
		cmp[eax + esi], 'e'
		je trovato
		cmp[eax + esi], 'i'
		je trovato
		cmp[eax + esi], 'o'
		je trovato
		cmp[eax + esi], 'u'
		je trovato

		inc esi
		jmp trovaVocali


		trovato:
		inc esi
		inc ebx
		jmp trovaVocali

		fine:
	}
}