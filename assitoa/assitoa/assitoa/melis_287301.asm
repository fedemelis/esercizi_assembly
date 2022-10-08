.586
.model flat
.code

_assitoa proc

push ebp
mov ebp, esp

push ebx
push esi
push ecx
push edx
push edi

mov esi, 0
mov ebx, dword ptr[ebp + 16]
mov ecx, 10
mov eax, dword ptr[ebp + 8]

cmp eax, 0
je zero

cmp eax, 0
jnl ciclo
mov edx, -1
imul edx

ciclo:
cmp eax, 0
je fine
mov edx, 0
cdq
idiv ecx
mov byte ptr[ebx + esi], dl
inc esi
jmp ciclo

fine:
mov byte ptr[ebx + esi], 0
dec esi
mov edi, 0
inverti:
cmp edi, esi
jge stop
mov cl, byte ptr[ebx + esi]
mov ch, byte ptr[ebx + edi]
mov byte ptr[ebx + edi], cl
mov byte ptr[ebx + esi], ch
inc edi
dec esi
jmp inverti

zero:
cmp dword ptr[ebp + 12], 1
jne stop
mov eax, -2
jmp finetot

stop:
cmp dword ptr[ebp + 12], 1
jne exit
cmp dword ptr[ebp + 8], 0
jl negat
mov eax, 1
jmp exit

negat:
mov eax, -1

exit:
cmp dword ptr[ebp + 8], 0
jnl finetot
mov esi, 0
mov cl, byte ptr[ebx + esi]
mov byte ptr[ebx + esi], '-'
inc esi


scala:
cmp dword ptr[ebx + esi], 0
je finisci
mov ch, byte ptr[ebx + esi]
mov byte ptr[ebx + esi], cl
mov cl, ch
inc esi
jmp scala

finisci:
mov byte ptr[ebx + esi], cl

finetot:

pop edi
pop edx
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret


_assitoa endp


end