.586
.model flat
.code

_togli_dispari proc

push ebp
mov ebp, esp

push ebx
push esi
push ecx
push edx

mov ebx, 0
mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov cl, 2
mov ax, 0
mov edx, 0

ciclo:
cmp esi, dword ptr[ebp + 12]
je fine
mov al, byte ptr[ebx + esi]
div cl
cmp ah, 0
jne controllo
inc esi
jmp ciclo

controllo:
mov al, byte ptr[ebx + esi - 1]
add dl, al
div cl
cmp ah, 0
jne stop
mov al, byte ptr[ebx + esi - 1]
add dl, al
div cl
cmp ah, 0
jne stop
mov al, dl
div cl
mov byte ptr[ebx + esi], al

stop:
inc esi
jmp ciclo


fine:

pop edx
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_togli_dispari endp

end