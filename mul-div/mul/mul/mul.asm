.586
.model flat
.code

_mul8 proc
push ebp
mov ebp, esp
mov al, byte ptr[ebp + 8]
mul byte ptr[ebp + 12]
movzx eax, ax
mov esp, ebp
pop ebp
ret
_mul8 endp

_imul8 proc
push ebp
mov ebp, esp
mov al, byte ptr[ebp + 8]
imul byte ptr[ebp + 12]
movsx eax, ax
mov esp, ebp
pop ebp
ret
_imul8 endp

_mul16 proc
push ebp
mov ebp, esp
push edx
mov ax, word ptr[ebp + 8]
mul word ptr[ebp + 12]
shl edx, 16					;;edx contiene nei suoi primi bit di destra il valore di dx.  sposto di 16 bit il valore di dx, in modo da liberare i primi 16 bit (dx). a questo punti metto in dx, ax ----> ora edx contiene dx:ax
mov dx, ax
mov eax, edx
pop edx
mov esp, ebp				
pop ebp
ret
_mul16 endp

_imul16 proc
push ebp
mov ebp, esp
push edx
mov ax, word ptr[ebp + 8]
mov dx, 0
imul word ptr[ebp + 12]
shl edx, 16
mov dx, ax
mov eax, edx
pop edx
mov esp, ebp
pop ebp
ret
_imul16 endp

_mul32 proc
push ebp
mov ebp, esp
mov eax, dword ptr[ebp + 8]
mul dword ptr[ebp + 12]
mov esp, ebp
pop ebp
ret
_mul32 endp

_imul32 proc
push ebp
mov ebp, esp
mov eax, dword ptr[ebp + 8]
mov edx, 0
imul dword ptr[ebp + 12]
mov esp, ebp
pop ebp
ret
_imul32 endp

end