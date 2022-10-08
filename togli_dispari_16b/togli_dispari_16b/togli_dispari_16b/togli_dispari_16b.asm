.586
.model flat
.code

_togli_dispari proc

push ebp
mov ebp, esp

push ebx
push esi
push edx
push ecx

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov ecx, 2

ciclo:
cmp esi, [ebp + 12]
je fine
mov edx, 0
mov ax, word ptr[ebx + esi * 2]
div cx
cmp edx, 0
jne controllo
inc esi
jmp ciclo


controllo:
mov edx, 0
dec esi
mov ax, word ptr[ebx + esi * 2]
inc esi
div cx
cmp edx, 0
jne incrementa
mov edx, 0
inc esi
mov ax, word ptr[ebx + esi * 2]
dec esi
div cx
cmp edx, 0
jne incrementa
dec esi
mov ax, word ptr[ebx + esi * 2]
inc esi
inc esi
add ax, word ptr[ebx + esi * 2]
dec esi
mov edx, 0
div cx
mov word ptr[ebx + esi * 2], ax
inc esi
jmp ciclo

incrementa:
inc esi
jmp ciclo

fine:

pop ecx
pop edx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_togli_dispari endp



end