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

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov ecx, 2

ciclo:
cmp esi, dword ptr[ebp + 12]
je fine
mov ah, 0
mov al, byte ptr[ebx + esi]
div cl
cmp ah, 1
je cambio
inc esi
jmp ciclo

cambio:
mov al, byte ptr[ebx + esi - 1]
mov ah, 0
div cl
cmp ah, 0
jne incrementa
add dl, al
mov al, byte ptr[ebx + esi + 1]
mov ah, 0
div cl
cmp ah, 0
jne incrementa
add dl, al
mov ah, 0

mov al, dl
div cl
cmp ah, 0
je pari
dec dl
mov byte ptr[ebx + esi], dl
jmp incrementa

pari:
mov byte ptr[ebx + esi], dl

incrementa:
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