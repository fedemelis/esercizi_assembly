.586
.model flat
.code

_div_n_primi proc

push ebp
mov ebp, esp

push ebx
push esi
push ecx
push edx
push edi

mov esi, 0
mov ebx, dword ptr[ebp + 8]
mov ecx, 2
mov edi, dword ptr[ebp + 12]
dec edi

ciclo:
cmp esi, edi
je fine
mov ecx, 2
call primo
cmp ch, 0
jne trovato
call primoEdi
cmp ch, 0
jne trovato
inc esi
dec edi
jmp ciclo


trovato:
mov eax, dword ptr[ebx + esi * 4]
mov edx, 0
mov ecx, dword ptr[ebx + edi * 4]
div ecx
mov dword ptr[ebx + esi * 4], eax
mov dword ptr[ebx + edi * 4], eax
inc esi
dec edi 
jmp ciclo

fine:

pop edi
pop edx
pop ecx
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

primo proc
mov ch, 0
cmp dword ptr[ebx + esi * 4], 1
je primoN
cmp dword ptr[ebx + esi * 4], 2
je primoN
cicloprimo:
cmp ecx, dword ptr[ebx + esi * 4]
je primoN
mov edx, 0
mov eax, dword ptr[ebx + esi * 4]
div ecx
cmp edx, 0
je finemetodo
inc ecx
jmp cicloprimo

primoN:
mov ch, 1

finemetodo:

ret

primo endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

primoEdi proc
mov ch, 0
cmp dword ptr[ebx + edi * 4], 1
je primoN
cmp dword ptr[ebx + edi * 4], 2
je primoN
cicloprimo:
cmp ecx, dword ptr[ebx + edi * 4]
je primoN
mov edx, 0
mov eax, dword ptr[ebx + edi * 4]
div ecx
cmp edx, 0
je finemetodo
inc ecx
jmp cicloprimo

primoN:
mov ch, 1

finemetodo:

ret

primoEdi endp

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

_div_n_primi endp



end