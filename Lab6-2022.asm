org 100h
mov dx, offset buffer
mov ah, 0ah
int 21h
mov dl, " "
mov ah, 2
int 21h
jmp print
buffer db 10,?, 10 dup(' ')
print:
xor bx, bx
mov bl, buffer[1]
mov buffer[bx+2], '$'
mov cl, buffer[1]
mov di, 2

myFunc:
mov bl, buffer[di]
call printDec
mov ah, 2
mov dl, " "
int 21h
add di, 1
loop myFunc
int 20h
printDec:
xor ax, ax
mov al, bl
aam
push ax
mov bl, ah
mov al, bl
aam
add ax, 3030h
push ax
mov dl, ah
mov ah, 2
int 21h
pop dx
mov ah, 2
int 21h
pop ax
add ax, 3030h
mov dl, al
mov ah,2
int 21h
ret
