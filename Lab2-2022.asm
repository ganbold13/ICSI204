; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

;mov ah, 1 ; read
;int 21h
;mov bl, al ; al => bl
 
mov ah, 1 ;read
int 21h
mov bl, al ; bl = al
mov dl, 10; new line
mov ah, 2
int 21h
mov dl, 13 ;to begin
mov ah, 2
int 21h

mov ah, 0
mov al, bl 
sub al, 30h 
mov cx, ax ;counter
          
mov ax, 1
xor dx, dx
myFunc:
add dx, ax
inc ax
loop myFunc


mov al, dl
aam
add ax, 3030h
mov bl, al
mov dl, ah
mov ah, 2
int 21h

mov dl, bl
mov ah, 2
int 21h



ret
