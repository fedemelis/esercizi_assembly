.586
.model flat
.code

_conta_vocali_consonanti proc

push ebp
mov ebp, esp

push ebx
push esi
push ecx
push edx
push edi

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov edx, 0
mov edi, 0
mov eax, dword ptr[ebp + 12]
mov ecx, dword ptr[ebp + 16]


ciclo:
cmp byte ptr[ebx + esi], 0
je fine
cmp byte ptr[ebx + esi], 'a'
je vocale
cmp byte ptr[ebx + esi], 'A'
je vocaleM
cmp byte ptr[ebx + esi], 'e'
je vocale
cmp byte ptr[ebx + esi], 'E'
je vocaleM
cmp byte ptr[ebx + esi], 'i'
je vocale
cmp byte ptr[ebx + esi], 'I'
je vocaleM
cmp byte ptr[ebx + esi], 'o'
je vocale
cmp byte ptr[ebx + esi], 'O'
je vocaleM
cmp byte ptr[ebx + esi], 'u'
je vocale
cmp byte ptr[ebx + esi], 'U'
je vocaleM
cmp byte ptr[ebx + esi], 'b'
je consonante
cmp byte ptr[ebx + esi], 'B'
je consonanteM
cmp byte ptr[ebx + esi], 'c'
je consonante
cmp byte ptr[ebx + esi], 'C'
je consonanteM
cmp byte ptr[ebx + esi], 'd'
je consonante
cmp byte ptr[ebx + esi], 'D'
je consonanteM
cmp byte ptr[ebx + esi], 'f'
je consonante
cmp byte ptr[ebx + esi], 'F'
je consonanteM
cmp byte ptr[ebx + esi], 'g'
je consonante
cmp byte ptr[ebx + esi], 'G'
je consonanteM
cmp byte ptr[ebx + esi], 'h'
je consonante
cmp byte ptr[ebx + esi], 'H'
je consonanteM
cmp byte ptr[ebx + esi], 'j'
je consonante
cmp byte ptr[ebx + esi], 'J'
je consonanteM
cmp byte ptr[ebx + esi], 'k'
je consonante
cmp byte ptr[ebx + esi], 'K'
je consonanteM
cmp byte ptr[ebx + esi], 'l'
je consonante
cmp byte ptr[ebx + esi], 'L'
je consonanteM
cmp byte ptr[ebx + esi], 'm'
je consonante
cmp byte ptr[ebx + esi], 'M'
je consonanteM
cmp byte ptr[ebx + esi], 'n'
je consonante
cmp byte ptr[ebx + esi], 'N'
je consonanteM
cmp byte ptr[ebx + esi], 'p'
je consonante
cmp byte ptr[ebx + esi], 'P'
je consonanteM
cmp byte ptr[ebx + esi], 'q'
je consonante
cmp byte ptr[ebx + esi], 'Q'
je consonanteM
cmp byte ptr[ebx + esi], 'r'
je consonante
cmp byte ptr[ebx + esi], 'R'
je consonanteM
cmp byte ptr[ebx + esi], 's'
je consonante
cmp byte ptr[ebx + esi], 'S'
je consonanteM
cmp byte ptr[ebx + esi], 't'
je consonante
cmp byte ptr[ebx + esi], 'T'
je consonanteM
cmp byte ptr[ebx + esi], 'v'
je consonante
cmp byte ptr[ebx + esi], 'V'
je consonanteM
cmp byte ptr[ebx + esi], 'w'
je consonante
cmp byte ptr[ebx + esi], 'W'
je consonanteM
cmp byte ptr[ebx + esi], 'x'
je consonante
cmp byte ptr[ebx + esi], 'X'
je consonanteM
cmp byte ptr[ebx + esi], 'y'
je consonante
cmp byte ptr[ebx + esi], 'Y'
je consonanteM
cmp byte ptr[ebx + esi], 'z'
je consonante
cmp byte ptr[ebx + esi], 'Z'
je consonanteM
inc edx
inc esi
jmp ciclo

vocale:
inc dword ptr[eax]
inc esi
jmp ciclo

consonante:
inc dword ptr[ecx]
inc esi
jmp ciclo

vocaleM:
inc dword ptr[eax]
inc esi
inc edi
jmp ciclo

consonanteM:
inc dword ptr[ecx]
inc esi
inc edi
jmp ciclo

fine:

cmp dword ptr[eax], 0
jne stop
cmp dword ptr[ecx], 0
jne stop
mov eax, -1


stop:

cmp edx, 0
jne stop2
cmp dword ptr[eax], 0
je stop2
cmp dword ptr[ecx], 0
je stop2
mov eax, -2
jmp finish

stop2:
cmp esi, edi
je maiusc
jmp finish

maiusc:
mov eax, -3

finish:

pop edi
pop edx
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_conta_vocali_consonanti endp

end