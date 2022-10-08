.586
.model flat
.code

_primo proc

push ebp
mov ebp, esp
push ebx
push ecx

mov eax, 0
mov ebx, dword ptr[ebp + 8]
mov ecx, 2

trova:
cmp ecx, dword ptr[ebp + 8]
jae primo
call dividi
cmp ebx, 0
je nonprimo
inc ecx
mov ebx, dword ptr[ebp + 8]


primo:
mov eax, 1

nonprimo:

pop ecx
pop ebx
mov esp, ebp
pop ebp
ret

_primo endp

;;;;;;;;;;;;;;;;;;;;;;;;;;

dividi proc

ciclo:
sub ebx, ecx
jbe stop
jmp ciclo

stop:
ret

dividi endp

;;;;;;;;;;;;;;;;;;;;;;;;;;

end