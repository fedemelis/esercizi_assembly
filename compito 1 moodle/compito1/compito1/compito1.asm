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
push edi

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov cl, 2
mov edx, 0
mov edi, 0

ciclo:
cmp dword ptr[ebp + 12], esi
je fine
mov al, byte ptr[ebx + esi]
mov ah, 0
div cl
cmp ah, 1
je disp
nochange:
inc esi
mov edi, 0
jmp ciclo


disp:
mov ah, 0
mov al, byte ptr[ebx + esi - 1]
div ecx
cmp ah, 1
je nochange
add edi, eax
mov edx, 0 
mov al, byte ptr[ebx + esi + 1]
div ecx
cmp edx, 1
je nochange
add edi, eax
mov dword ptr[ebx + esi], edi
inc esi
mov edi, 0
jmp ciclo


fine:

pop edi
pop ecx
pop edx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_togli_dispari endp



end