.586
.model flat
.code

_somma_modulo proc

push ebp
mov ebp, esp

push ebx
push ecx
push esi
push edi

mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 16]
mov esi, 0
mov edi, dword ptr[ebp + 20]

ciclo:
cmp esi, dword ptr[ebp + 12]
je fine
mov eax, dword ptr[ebx + esi * 4]
mov edx, 0
cdq
idiv edi
mov dword ptr[ecx + esi * 4], edx
inc esi
jmp ciclo

fine:
mov esi, 0
mov eax, 0
somma:
cmp esi, dword ptr[ebp + 12]
je stop
add eax, dword ptr[ecx + esi * 4]
inc esi
jmp somma

stop:
mov esi, 0
mov edi, 0
divis:
cmp esi, dword ptr[ebp + 12]
je esci
cmp dword ptr[ecx + esi * 4], 0
je zero
inc esi
jmp divis
zero:
inc edi
inc esi
jmp divis

esci:
cmp edi, 0
je menodue
cmp edi, dword ptr[ebp + 12]
je menouno
jmp carlo

menodue:
mov eax, -2
jmp carlo

menouno:
mov eax, -1

carlo:

pop edi
pop esi
pop ecx
pop ebx

mov esp, ebp
pop ebp

ret


_somma_modulo endp


end