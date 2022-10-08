.586
.model flat
.code

_strlen proc

push ebp
mov ebp, esp

push ebx
push esi
push ecx

mov ecx, dword ptr[ebp + 12]
mov eax, 0
mov ebx, [ebp + 8]
mov esi, 0

ciclo: 
cmp byte ptr [ebx + esi], 0
je fine
inc eax 
inc esi
call qualeSimbolo
jmp ciclo

fine:

pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_strlen endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

qualeSimbolo proc

inc dword ptr[ecx]

ret

qualeSimbolo endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

end