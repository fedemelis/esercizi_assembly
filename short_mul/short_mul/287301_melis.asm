.586
.model flat
.code

_short_mul proc

push ebp
mov ebp, esp

push ebx
push ecx
push esi
push edx

mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 12]
mov esi, 0
mov eax, 0

ciclo:
cmp esi, dword ptr[ebp + 16]
je fine
mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 12]
mov ax, word ptr[ebx + esi * 2]
mov dx, word ptr[ecx + esi * 2]
imul dx
cmp dx, 0
jne shift
mov edx, dword ptr[ebp + 20]
add dword ptr[edx], eax
inc esi
jmp ciclo

shift:
movzx ebx, dx
mov edx, 0
mov ecx, dword ptr[ebp + 20]
add edx, ebx
shl edx, 16
add dword ptr[ecx], edx
movzx ebx, ax
add dword ptr[ecx], ebx
inc esi
jmp ciclo

fine:

pop edx
pop esi
pop ecx
pop ebx

mov esp, ebp
pop ebp

ret

_short_mul endp


end