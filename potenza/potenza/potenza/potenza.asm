.586
.model flat
.code

_potenza proc

push ebp
mov ebp, esp

push ebx
push ecx
push esi

mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 12]
mov esi, 1
mov eax, ebx

ciclo:
cmp esi, ecx
je fine
imul ebx
inc esi
jmp ciclo

fine:

pop esi
pop ecx
pop ebx

mov esp, ebp
pop ebp

ret


_potenza endp

end