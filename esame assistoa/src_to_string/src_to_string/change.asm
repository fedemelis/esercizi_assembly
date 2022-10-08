.586
.model flat
.code

_assitoa proc

push ebp
mov ebp, esp

push ebx
push ecx
push edi
push edx
push esi

mov edi, 0
mov ebx, dword ptr[ebp + 16]
mov eax, dword ptr[ebp + 8]
mov edx, 0
mov ecx, 10
mov esi, 0

ciclo:
cdq
idiv ecx
cmp eax, 0
je fine
mov byte ptr[ebx + edi], dl
inc edi
jmp ciclo

fine:
mov byte ptr[ebx + edi], dl
mov ecx, 2
mov edx, 0
mov eax, edi
cdq
idiv ecx 
mov byte ptr[ebx + edi + 1], 0

reverse:
cmp eax, esi
je stop
mov cl, byte ptr[ebx + edi]
mov dl, byte ptr[ebx + esi]
mov byte ptr[ebx + esi], cl
mov byte ptr[ebx + edi], dl
inc esi
dec edi
jmp reverse

stop:

pop esi
pop edx
pop edi
pop ecx
pop edi

mov esp, ebp
pop ebp

ret

_assitoa endp

end