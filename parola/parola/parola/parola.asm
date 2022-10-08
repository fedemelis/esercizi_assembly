.586
.model flat
.code

_checkparola proc


push ebp
mov ebp, esp


push ebx
push esi
push edi


mov esi, 0
mov ebx, dword ptr [ebp + 8]
mov eax, 1
mov dl, 0


ciclofor:
cmp byte ptr [ebx + esi], 0
je finefor
mov cl, byte ptr [ebx + esi]
cmp cl,'A'
je giusto
cmp cl,'B'
je giusto
cmp cl,'C'
je giusto
cmp cl,'D'
je giusto
cmp cl,'E'
je giusto
cmp cl,'F'
je giusto
cmp cl,'G'
je giusto
cmp cl,'H'
je giusto
cmp cl,'I'
je giusto
cmp cl,'J'
je giusto
cmp cl,'K'
je giusto
cmp cl,'L'
je giusto
cmp cl,'M'
je giusto
cmp cl,'N'
je giusto
cmp cl,'O'
je giusto
cmp cl,'P'
je giusto
cmp cl,'Q'
je giusto
cmp cl,'R'
je giusto
cmp cl,'S'
je giusto
cmp cl,'T'
je giusto
cmp cl,'U'
je giusto
cmp cl,'V'
je giusto
cmp cl,'W'
je giusto
cmp cl,'X'
je giusto
cmp cl,'Y'
je giusto
cmp cl,'Z'
je giusto
jmp sbagliato

giusto:
cmp cl, dl
jb sbagliato
mov dl, cl
inc esi
jmp ciclofor

sbagliato:
mov eax, 0

finefor:

pop edi
pop esi
pop ebx

pop ebp

ret

_checkparola endp

end