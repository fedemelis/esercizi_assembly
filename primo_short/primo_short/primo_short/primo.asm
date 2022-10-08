.586
.model flat
.code

_primo proc

push ebp
mov ebp, esp

push ebx
push ecx
push edx

mov eax, dword ptr[ebp + 8]
mov ecx, 2

cmp ax, 1
je primo

ciclo:
cmp ecx, eax
je primo
mov edx, 0
cwd
idiv cx
cmp dx, 0
je nonprimo
inc ecx
jmp ciclo

primo:
mov eax, 1
jmp fine

nonprimo:
mov eax, 0

fine:

pop edx
pop ecx
pop ebx

mov esp, ebp
pop ebp

ret

_primo endp


end
