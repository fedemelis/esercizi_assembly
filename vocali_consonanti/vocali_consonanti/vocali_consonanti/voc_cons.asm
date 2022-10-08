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

mov esi, 0
mov edi, 0
mov eax, 0
mov ebx, dword ptr[ebp + 8]
mov ecx, [ebp + 12]
mov edx, [ebp + 16]


ciclo:
cmp byte ptr[ebx + esi], 0
je controlloFinale

vocale:
mov cl, byte ptr[ebx + esi]
cmp byte ptr[ebx + esi], 'A'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'E'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'I'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'O'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'U'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'a'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'e'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'i'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'o'
je vocaleTrovata
cmp byte ptr[ebx + esi], 'u'
je vocaleTrovata
jmp consonante

consonante:
cmp byte ptr[ebx + esi], 91
je notLettera
cmp byte ptr[ebx + esi], 92
je notLettera
cmp byte ptr[ebx + esi], 93
je notLettera
cmp byte ptr[ebx + esi], 94
je notLettera
cmp byte ptr[ebx + esi], 95
je notLettera
cmp byte ptr[ebx + esi], 96
je notLettera
cmp byte ptr[ebx + esi], 64
jbe notLettera
cmp byte ptr[ebx + esi], 123
jae notLettera
jmp consonanteTrovata

vocaleTrovata:
inc esi
inc dword ptr[ecx]
jmp ciclo

consonanteTrovata:
inc esi
inc dword ptr[edx]
jmp ciclo

notLettera:
inc esi
inc edi
jmp ciclo

controlloFinale:

cmp dword ptr[ecx], 0
jne noSimboli
cmp dword ptr[edx], 0
jne noSimboli
mov eax, -1
jmp fine

noSimboli:
cmp edi, 0
jne maiusc
mov eax, -2

maiusc:
call isMaiusc
cmp edi, esi
jne fine
mov eax, -3

fine:

pop edi
pop edx
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_conta_vocali_consonanti endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

isMaiusc proc

mov edi, 0
mov esi, 0

findM:
cmp byte ptr[ebx + esi], 0
je stop
cmp byte ptr[ebx + esi], 'A'
je find
cmp byte ptr[ebx + esi], 'B'
je find
cmp byte ptr[ebx + esi], 'C'
je find
cmp byte ptr[ebx + esi], 'D'
je find
cmp byte ptr[ebx + esi], 'E'
je find
cmp byte ptr[ebx + esi], 'F'
je find
cmp byte ptr[ebx + esi], 'G'
je find
cmp byte ptr[ebx + esi], 'H'
je find
cmp byte ptr[ebx + esi], 'I'
je find
cmp byte ptr[ebx + esi], 'J'
je find
cmp byte ptr[ebx + esi], 'K'
je find
cmp byte ptr[ebx + esi], 'L'
je find
cmp byte ptr[ebx + esi], 'M'
je find
cmp byte ptr[ebx + esi], 'N'
je find
cmp byte ptr[ebx + esi], 'O'
je find
cmp byte ptr[ebx + esi], 'P'
je find
cmp byte ptr[ebx + esi], 'Q'
je find
cmp byte ptr[ebx + esi], 'R'
je find
cmp byte ptr[ebx + esi], 'S'
je find
cmp byte ptr[ebx + esi], 'T'
je find
cmp byte ptr[ebx + esi], 'U'
je find
cmp byte ptr[ebx + esi], 'V'
je find
cmp byte ptr[ebx + esi], 'W'
je find
cmp byte ptr[ebx + esi], 'X'
je find
cmp byte ptr[ebx + esi], 'Y'
je find
cmp byte ptr[ebx + esi], 'Z'
je find
inc esi
jmp findM

find: 
inc edi
inc esi
jmp findM

jmp findM 

stop:

ret

isMaiusc endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


end