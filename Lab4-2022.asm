
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

 
mov si, 0
mov cl, 9 ; array lenght
mov al, a[si]
inc si
myFunc:
cmp al, a[si]
jnc lb
mov al, a[si]
lb:
inc si
loop myFunc  
    
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

a db 9, 3, 1, 2, 5, 7, 38, 36, 30, 8, 00h    

     


