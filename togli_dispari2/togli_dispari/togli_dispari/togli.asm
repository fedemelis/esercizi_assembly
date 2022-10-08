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
mov ah, 0
div cl
cmp ah, 0
jne dispari
avanza:
inc esi
jmp ciclo

dispari:
mov dh, 100
mov ah, 0
mov dl, 0
dec esi
mov al, byte ptr[ebx + esi]
mov ah, 0
div cl
add dl, byte ptr[ebx + esi]
inc esi
cmp ah, 0
jne avanza
inc esi
mov al, byte ptr[ebx + esi]
mov ah, 0
div cl
add dl, byte ptr[ebx + esi]
dec esi
cmp ah, 0
jne avanza
mov al, dl
mov ah, 0
div cl
mov dl, al
mov ah, 0
div cl
cmp ah, 0
jne mediaDisp
mov byte ptr[ebx + esi], dl
inc edi
jmp avanza
mediaDisp:
inc dl
mov byte ptr[ebx + esi], dl
inc edi
jmp avanza

fine:
cmp dh, 100
jne tuttipari
cmp edi, 0
je tuttidisp
mov eax, edi
jmp stop

tuttidisp:
mov eax, -1
jmp stop

tuttipari:
mov eax, -2

stop:


pop edi
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_togli_dispari endp

end