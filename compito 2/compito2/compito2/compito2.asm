.586
.model flat
.code

_somma_modulo proc

push ebp
mov ebp, esp

push ebx
push esi
push ecx
push edx
push edi

mov esi, 0
mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 16]
mov edi, dword ptr[ebp + 20]

ciclo:
cmp esi, dword ptr[ebp + 12]
je fine
mov edx, 0
mov eax, dword ptr[ebx + esi * 4]
cdq
idiv edi
mov dword ptr[ecx + esi * 4], edx
inc esi
jmp ciclo


fine:
mov esi, 0
mov eax, 0
cciclo:
cmp esi, dword ptr[ebp + 12]
je ffine
add eax, dword ptr[ecx + esi * 4]
inc esi 
jmp cciclo

ffine:
mov esi, 0
ccciclo:
cmp esi, dword ptr[ebp + 12]
je zero
cmp dword ptr[ecx + esi * 4], 0
jne secondo
inc esi
jmp ccciclo

zero:
mov eax, -1
jmp stop

secondo:
mov esi, 0
cccciclo:
cmp esi, dword ptr[ebp + 12]
je notzero
cmp dword ptr[ecx + esi * 4], 0
je stop
inc esi
jmp cccciclo

notzero:
mov eax, -2
jmp stop

stop:


pop edi
pop edx
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_somma_modulo endp


end