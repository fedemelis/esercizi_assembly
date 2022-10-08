.586
.model flat
.code

_divisione_array proc

push ebp
mov ebp, esp
push ebx
push esi
push ecx

mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 20]
mov esi, 0
mov ecx, dword ptr[ebp + 20]

ciclo:
cmp esi, dword ptr[ebp + 16]
je fine
mov eax, dword ptr[ebx + esi * 4]
cdq
idiv dword ptr[ebp + 12]
mov dword ptr[ebx + esi * 4], eax
mov dword ptr[ecx + esi * 4], edx
inc esi
jmp ciclo

fine:
mov esi, 0

cicloResto:
cmp dword ptr[ecx + esi * 4], 0
jne stop
inc esi
cmp esi, dword ptr[ebp + 16]
je tuttiZeri
jmp cicloResto

tuttiZeri:
mov eax, -1
jmp fineProgramma

stop:
mov esi, 0

diversoDa0:
cmp dword ptr[ecx + esi * 4], 0
je zero
cmp esi, dword ptr[ebp + 16]
je fineProgramma
inc esi
jmp diversoDa0

zero:
mov eax, 1

fineProgramma:

pop ecx
pop esi
pop ebx
mov esp, ebp
pop ebp
ret
_divisione_array endp

end