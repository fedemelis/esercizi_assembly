.586
.model flat
.code

_togli_dispari proc

push ebp
mov ebp, esp

push ebx
push esi
push ecx
push edi

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov cl, 2
mov edi, 0
mov eax, 0

ciclo:
cmp esi, dword ptr[ebp + 12]
je fine
mov al, byte ptr[ebx + esi]
mov edx, 0
div cl
cmp edx, 0
jne dispari
avanza:
inc esi
jmp ciclo

dispari:
mov ah, 0
dec esi
mov al, byte ptr[ebx + esi]
mov edx, 0
div cl
cmp edx, 0
jne avanza
add ah, byte ptr[ebx + esi]
inc esi
inc esi
mov al, byte ptr[ebx + esi]
mov edx, 0
div cl
cmp edx, 0
jne avanza
add ah, byte ptr[ebx + esi]
dec esi
mov al, byte ptr[ebx + esi]
mov edx, 0
div cl
cmp edx, 0
jne mediaDisp
mov byte ptr[ebx + esi], al
jmp avanza
mediaDisp:
inc al
mov byte ptr[ebx + esi], al
jmp avanza

fine:

pop edi
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_togli_dispari endp

end