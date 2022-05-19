org 100h   

macro printDec
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
endm 
  
macro printHex
mov ah, 0
mov si, ax
mov dl, [si+hexdigit]
mov ah,2
int 21h    
endm  
   
   
macro binary
    push cx
    mov cx, 8
    print_: mov ah, 2   
       mov dl, '0'
       test bl, 10000000b  
       jz zero
       mov dl, '1'
    zero:  int 21h
       shl bl, 1
    loop print_
    mov dl, " "
    mov ah, 2
    int 21h
    pop cx
endm
    
    
macro newline
    mov ah, 2
    mov dl, 10
    int 21h  
    mov ah, 2
    mov dl, 13
    int 21h
endm
hexdigit db '0123456789ABCDEF'



mov dx, offset buffer
mov ah, 0ah
int 21h   

newline

jmp print
buffer db 10,?, 10 dup(' ')   

print:
xor bx, bx 
xor cx, cx
mov bl, buffer[1]
mov buffer[bx+2], '$'
mov cl, buffer[1]
mov di, 2
myFunc:
mov bl, buffer[di]
printDec
mov ah, 2
mov dl, " "
int 21h
add di, 1
loop myFunc  

newline

xor bx, bx
xor cx, cx
mov bl, buffer[1]
mov buffer[bx+2], '$'
mov cl, buffer[1]
mov di, 2
myFunc1:
mov bl, buffer[di]
mov al, bl
shr al,4
printHex
mov al, bl
shl al, 4
shr al, 4
printHex
mov ah, 2
mov dl, " "
int 21h
add di, 1
loop myFunc1  
   
newline   

xor bx, bx 
xor cx, cx
mov bl, buffer[1]
mov buffer[bx+2], '$'
mov cl, buffer[1]
mov di, 2
my:
mov bl, buffer[di]
binary 
add di, 1
loop my
int 20h

ret
