.586
.model flat
.code

_compare_vec proc

push ebp
mov ebp, esp

push ebx
push ecx
push edx
push esi
push edi

mov ebx, [ebp + 8]
mov ecx, [ebp + 12]
mov edx, [ebp + 16]
mov esi, 0
mov edi, 0

ciclo:
cmp esi, dword ptr[ebp + 20]
je fine
mov ebx, dword ptr[ebx + esi * 4]
cmp ebx, [ecx + esi * 4]
je scrivi
inc esi
jmp ciclo

scrivi:
mov [edx + edi * 4], ebx
inc edi
inc esi
jmp ciclo

fine:

pop edi
pop esi
pop edx
pop ecx
pop ebx

mov esp, ebp
pop ebp

ret

_compare_vec endp

end