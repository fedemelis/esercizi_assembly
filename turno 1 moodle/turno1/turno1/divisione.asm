.586
.model flat
.code

_divisione_array proc

push ebp
mov ebp, esp

push ebx
push esi
push edx
push ecx

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov eax, 0
mov ecx, dword ptr[ebp + 20]

ciclo:
cmp esi, dword ptr[ebp + 16]
je fine
mov edx, 0
mov eax, dword ptr[ebx + esi * 4]
cdq
idiv dword ptr [ebp + 12]
mov dword ptr[ebx + esi * 4], eax
mov dword ptr[ecx + esi * 4], edx
inc esi
jmp ciclo

fine:
mov esi, 0

ciclo1:
cmp esi, dword ptr[ebp + 16]
je zero
cmp dword ptr[ecx + esi * 4], 0
jne fineciclo
inc esi
jmp ciclo1

zero:
mov eax, -1
jmp stop

fineciclo:
mov esi, 0

ciclo2:
cmp esi, dword ptr[ebp + 16]
je notzero
cmp dword ptr[ecx + esi * 4], 0
je stop
inc esi
jmp ciclo2

notzero:
mov eax, 1
jmp stop

stop:

pop ecx
pop edx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_divisione_array endp

end