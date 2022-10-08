int main(void) {

	char* s = "òòò°°°****§§§}}}129dhau";
	char* pointer = s;
	int ris = 0;

	__asm {

		mov eax, pointer
		mov esi, 0
		mov ebx, 0

		cerca:
		cmp [eax + esi], 0
		je fine 
		cmp [eax + esi], 48
		jl nonAlpha
		cmp [eax + esi], 122
		jg nonAlpha 
		inc esi
		inc ebx
		jmp cerca

		
		nonAlpha:
		inc esi
		jmp cerca 

		fine:
		mov ris, ebx
	}

}