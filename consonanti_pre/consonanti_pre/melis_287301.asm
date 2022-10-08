.586
.model flat
.code

_contaconsonanti_pre proc

push ebp
mov ebp, esp

push ebx
push esi
push edi
push ecx

mov ebx, dword ptr[ebp + 8]
mov esi, 0
mov edi, 0
mov ecx, dword ptr[ebp + 12]
mov eax, 0

ciclo:
cmp byte ptr[ebx + esi], 0
je fine
cmp  byte ptr[ebx + esi], 'A'
je avanza
cmp  byte ptr[ebx + esi], 'E'
je avanza
cmp  byte ptr[ebx + esi], 'I'
je avanza
cmp  byte ptr[ebx + esi], 'O'
je avanza
cmp  byte ptr[ebx + esi], 'U'
je avanza
cmp  byte ptr[ebx + esi], 'a'
je avanza
cmp  byte ptr[ebx + esi], 'e'
je avanza
cmp  byte ptr[ebx + esi], 'i'
je avanza
cmp  byte ptr[ebx + esi], 'o'
je avanza
cmp  byte ptr[ebx + esi], 'u'
je avanza
cmp byte ptr[ebx + esi], 65
jl avanza
cmp byte ptr[ebx + esi], 122
jg avanza
cmp  byte ptr[ebx + esi], 91
je avanza
cmp  byte ptr[ebx + esi], 92
je avanza
cmp  byte ptr[ebx + esi], 93
je avanza
cmp  byte ptr[ebx + esi], 94
je avanza
cmp  byte ptr[ebx + esi], 95
je avanza
cmp  byte ptr[ebx + esi], 96
je avanza
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


inc esi
cmp  byte ptr[ebx + esi], 'b'
je ciclo
cmp  byte ptr[ebx + esi], 'c'
je ciclo
cmp  byte ptr[ebx + esi], 'd'
je ciclo
cmp  byte ptr[ebx + esi], 'f'
je ciclo
cmp  byte ptr[ebx + esi], 'g'
je ciclo
cmp  byte ptr[ebx + esi], 'h'
je ciclo
cmp  byte ptr[ebx + esi], 'j'
je ciclo
cmp  byte ptr[ebx + esi], 'k'
je ciclo
cmp  byte ptr[ebx + esi], 'l'
je ciclo
cmp  byte ptr[ebx + esi], 'm'
je ciclo
cmp  byte ptr[ebx + esi], 'n'
je ciclo
cmp  byte ptr[ebx + esi], 'p'
je ciclo
cmp  byte ptr[ebx + esi], 'q'
je ciclo
cmp  byte ptr[ebx + esi], 'r'
je ciclo
cmp  byte ptr[ebx + esi], 's'
je ciclo
cmp  byte ptr[ebx + esi], 't'
je ciclo
cmp  byte ptr[ebx + esi], 'v'
je ciclo
cmp  byte ptr[ebx + esi], 'w'
je ciclo
cmp  byte ptr[ebx + esi], 'x'
je ciclo
cmp  byte ptr[ebx + esi], 'y'
je ciclo
cmp  byte ptr[ebx + esi], 'z'
je ciclo
cmp  byte ptr[ebx + esi], 'B'
je ciclo
cmp  byte ptr[ebx + esi], 'C'
je ciclo
cmp  byte ptr[ebx + esi], 'D'
je ciclo
cmp  byte ptr[ebx + esi], 'F'
je ciclo
cmp  byte ptr[ebx + esi], 'G'
je ciclo
cmp  byte ptr[ebx + esi], 'H'
je ciclo
cmp  byte ptr[ebx + esi], 'J'
je ciclo
cmp  byte ptr[ebx + esi], 'K'
je ciclo
cmp  byte ptr[ebx + esi], 'L'
je ciclo
cmp  byte ptr[ebx + esi], 'M'
je ciclo
cmp  byte ptr[ebx + esi], 'N'
je ciclo
cmp  byte ptr[ebx + esi], 'P'
je ciclo
cmp  byte ptr[ebx + esi], 'Q'
je ciclo
cmp  byte ptr[ebx + esi], 'R'
je ciclo
cmp  byte ptr[ebx + esi], 'S'
je ciclo
cmp  byte ptr[ebx + esi], 'T'
je ciclo
cmp  byte ptr[ebx + esi], 'V'
je ciclo
cmp  byte ptr[ebx + esi], 'W'
je ciclo
cmp  byte ptr[ebx + esi], 'X'
je ciclo
cmp  byte ptr[ebx + esi], 'Y'
je ciclo
cmp  byte ptr[ebx + esi], 'Z'
je ciclo
cmp byte ptr[ebx + esi], 65
jl ciclo
cmp byte ptr[ebx + esi], 122
jg ciclo
cmp  byte ptr[ebx + esi], 91
je ciclo
cmp  byte ptr[ebx + esi], 92
je ciclo
cmp  byte ptr[ebx + esi], 93
je ciclo
cmp  byte ptr[ebx + esi], 94
je ciclo
cmp  byte ptr[ebx + esi], 95
je ciclo
cmp  byte ptr[ebx + esi], 96
je ciclo
;;;;;;;;;;;;;;;;;;;;;;;;;;;;
inc eax
dec esi
cmp  byte ptr[ebx + esi], 'B'
je avanza
cmp  byte ptr[ebx + esi], 'C'
je avanza
cmp  byte ptr[ebx + esi], 'D'
je avanza
cmp  byte ptr[ebx + esi], 'F'
je avanza
cmp  byte ptr[ebx + esi], 'G'
je avanza
cmp  byte ptr[ebx + esi], 'H'
je avanza
cmp  byte ptr[ebx + esi], 'J'
je avanza
cmp  byte ptr[ebx + esi], 'K'
je avanza
cmp  byte ptr[ebx + esi], 'L'
je avanza
cmp  byte ptr[ebx + esi], 'M'
je avanza
cmp  byte ptr[ebx + esi], 'N'
je avanza
cmp  byte ptr[ebx + esi], 'P'
je avanza
cmp  byte ptr[ebx + esi], 'Q'
je avanza
cmp  byte ptr[ebx + esi], 'R'
je avanza
cmp  byte ptr[ebx + esi], 'S'
je avanza
cmp  byte ptr[ebx + esi], 'T'
je avanza
cmp  byte ptr[ebx + esi], 'V'
je avanza
cmp  byte ptr[ebx + esi], 'W'
je avanza
cmp  byte ptr[ebx + esi], 'X'
je avanza
cmp  byte ptr[ebx + esi], 'Y'
je avanza
cmp  byte ptr[ebx + esi], 'Z'
je avanza
inc edi
inc esi
jmp ciclo

avanza:
inc esi
jmp ciclo

fine:
mov [ecx], edi

pop ecx
pop edi
pop esi
pop ebx

mov esp, ebp
pop ebp

ret

_contaconsonanti_pre endp


end