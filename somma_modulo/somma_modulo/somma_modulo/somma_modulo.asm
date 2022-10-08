.586
.model flat
.code

_somma_modulo proc

push ebp
mov ebp, esp

push ebx
push ecx
push esi

mov esi, 0
mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 16]

ciclo:
cmp esi, dword ptr[ebp + 12]
je fine
mov eax, dword ptr[ebx + esi * 4]
cdq
idiv dword ptr[ebp + 20]
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

tuttiZeri:
cmp esi, dword ptr[ebp + 12]
je stop2
cmp dword ptr[ecx + esi * 4], 0
jne finisci
inc esi
jmp tuttiZeri

stop2:
mov eax, -1

finisci:
mov esi, 0

nessunoZero:
cmp esi, dword ptr[ebp + 12]
je stop3
cmp dword ptr[ecx + esi * 4], 0
je finish
inc esi
jmp nessunoZero

stop3:
mov eax, -2

finish:

pop esi
pop ecx
pop ebx

mov esp, ebp
pop ebp
ret

_somma_modulo endp

end