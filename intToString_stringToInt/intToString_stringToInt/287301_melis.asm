.586
.model flat
.code

_intToString proc
push ebp
mov ebp, esp
push ebx
push ecx
push esi
mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 12]
mov esi, 0
ciclo:
cmp esi, dword ptr[ebp + 16]
je fine
mov eax, dword ptr[ebx + esi * 4]
mov byte ptr[ecx + esi], al
inc esi
jmp ciclo
fine:
pop esi
pop ecx
pop ebx
mov esp, ebp
pop ebp
ret
_intToString endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_stringToInt proc

push ebp
mov ebp, esp

push ebx
push ecx
push esi

mov ebx, dword ptr[ebp + 8]
mov ecx, dword ptr[ebp + 12]
mov esi, 0
mov eax, 0

ciclo:
cmp esi, dword ptr[ebp + 16]
je fine
mov al, byte ptr[ebx + esi]
mov dword ptr[ecx + esi * 4], eax
inc esi
jmp ciclo

fine:

pop esi
pop ecx
pop ebx

mov esp, ebp
pop ebp

ret

_stringToInt endp



end