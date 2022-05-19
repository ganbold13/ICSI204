
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h

mov ax,0600h 
mov bh,07 
mov cx,0000
mov dx,184fh
int 10h 
mov ah,00
mov al,13h
int 10h


mov cx,0
mov dx,120
River1: mov ah,0ch
mov al,03h
int 10h
inc cx
inc dx
;cmp cx,123
cmp dx,130
jnz River1  


mov cx,10
mov dx,130
River11: mov ah,0ch
mov al,03h
int 10h
dec cx
;dec dx
cmp cx,5
;cmp dx,130
jnz River11


mov cx,5
mov dx,130
River12: mov ah,0ch
mov al,03h
int 10h
inc cx
inc dx
;cmp cx,123
cmp dx,145
jnz River12


mov cx,20
mov dx,145
River13: mov ah,0ch
mov al,03h
int 10h
dec cx
;inc dx
cmp cx,15
;cmp dx,140
jnz River13     


mov cx,15
mov dx,145
River14: mov ah,0ch
mov al,03h
int 10h
inc cx
inc dx
;cmp cx,15
cmp dx,170
jnz River14 

mov cx,40
mov dx,170
River15: mov ah,0ch
mov al,03h
int 10h
dec cx
;inc dx
cmp cx,33
;cmp dx,140
jnz River15 

mov cx,33
mov dx,170
River16: mov ah,0ch
mov al,03h
int 10h
inc cx
inc dx
;cmp cx,15
cmp dx,200
jnz River16 

mov cx,0
mov dx,110
River2: mov ah,0ch
mov al,03h
int 10h
inc cx
inc cx
inc dx
;inc dx
;cmp cx,123
cmp dx,130
jnz River2


mov cx,40
mov dx,130
River21: mov ah,0ch
mov al,03h
int 10h
dec cx
;inc dx
cmp cx,35
;cmp dx,130
jnz River21
           
mov cx,35
mov dx,130
River22: mov ah,0ch
mov al,03h
int 10h
inc cx
inc cx
inc dx
;inc dx
;cmp cx,123
cmp dx,150
jnz River22


mov cx,75
mov dx,150
River23: mov ah,0ch
mov al,03h
int 10h
dec cx
;inc dx
cmp cx,65
;cmp dx,130
jnz River23 


mov cx,65
mov dx,150
River24: mov ah,0ch
mov al,03h
int 10h
inc cx
inc cx
inc dx
;inc dx
;cmp cx,123
cmp dx,200
jnz River24


mov cx,10
mov dx,55
Mount0: mov ah,0ch
mov al,02h
int 10h
inc cx
dec dx
;cmp cx,123
cmp dx,22
jnz Mount0        
         
mov cx,43
mov dx,22
Mount1: mov ah,0ch
mov al,02h
int 10h
inc cx
inc dx
;cmp cx,216
cmp dx,75
jnz Mount1 

mov cx,96
mov dx,75
Mount2: mov ah,0ch
mov al,02h
int 10h
inc cx
dec dx
;cmp cx,123
cmp dx,35
jnz Mount2        
         
mov cx,136
mov dx,35
Mount3: mov ah,0ch
mov al,02h
int 10h
inc cx
inc dx
;cmp cx,216
cmp dx,50
jnz Mount3  

mov cx, 195
mov dx,53
Mount4: mov ah,0ch
mov al,02h
int 10h
inc cx
dec dx
;cmp cx,123
cmp dx,30
jnz Mount4  


mov cx,218
mov dx,30
Mount5: mov ah,0ch
mov al,02h
int 10h
inc cx
inc dx
;cmp cx,123
cmp dx,60
jnz Mount5
          

mov cx,248
mov dx,60
Mount6: mov ah,0ch
mov al,02h
int 10h
inc cx
dec dx
;cmp cx,123
cmp dx,20
jnz Mount6
            

mov cx,288
mov dx,20
Mount7: mov ah,0ch
mov al,02h
int 10h
inc cx
inc dx
;cmp cx,123
cmp dx,52
jnz Mount7    



;eh biy

;zuun deewer
mov cx,130
mov dx,75
hseLR: mov ah,0ch
mov al,06h
int 10h
inc cx
dec dx
cmp cx,173
cmp dx,32
jnz hseLR
;baruun deewer
mov cx,173
mov dx,32
hseRR: mov ah,0ch
mov al,06h
int 10h
inc cx
inc dx
cmp cx,216
cmp dx,75
jnz hseRR

;deed hundlun zuraas
mov cx,130 
mov dx,75
hseT: 
mov ah,0ch 
mov al,06h 
int 10h 
inc cx 
cmp cx,216
jnz hseT
;dood hundlun zuraas
mov cx,130
mov dx,125
hseB: mov ah,0ch
mov al,06h
int 10h
inc cx
cmp cx,216
jnz hseB
;zuun bosoo zuraas
mov cx,130
mov dx,75
hseL: mov ah,0ch
mov al,06h
int 10h
inc dx
cmp dx,125
jnz hseL
;baruun bosoo zuraas
mov cx,216
mov dx,75
hseR: mov ah,0ch
mov al,06h
int 10h
inc dx
cmp dx,126
jnz hseR  

;haalga
; zuun zuraas
mov cx,164
mov dx,125
hseLD: mov ah,0ch
mov al,06h
int 10h
dec dx
cmp dx,90
jnz hseLD 
;baruun
mov cx,182
mov dx,125
hseRD: mov ah,0ch
mov al,06h
int 10h
dec dx
cmp dx,90
jnz hseRD
;deed zuraas
mov cx,164
mov dx,90
hseTD: mov ah,0ch
mov al,06h
int 10h
inc cx
cmp cx,183
jnz hseTD

;tsonh
; zuun bosoo zuraas 1
mov cx,136
mov dx,85
hseLWV1: mov ah,0ch
mov al,0Bh
int 10h
inc dx
cmp dx,105
jnz hseLWV1
;zuun bosoo zuraas 2
mov cx,146
mov dx,85
hseLWV2: mov ah,0ch
mov al,0Bh
int 10h
inc dx
cmp dx,105
jnz hseLWV2
;zuun bosoo zuraas 3
mov cx,156
mov dx,85
hseLWV3: mov ah,0ch
mov al,0Bh
int 10h
inc dx
cmp dx,105
jnz hseLWV3

; baruun bosoo zuraas 1
mov cx,190
mov dx,85
hseRWV1: mov ah,0ch
mov al,0Bh
int 10h
inc dx
cmp dx,105
jnz hseRWV1
;baruun bosoo zuraas 2
mov cx,200
mov dx,85
hseRWV2: mov ah,0ch
mov al,0Bh
int 10h
inc dx
cmp dx,105
jnz hseRWV2
; baruun bosoo zuraas 3
mov cx,210
mov dx,85
hseRWV3: 
mov ah,0ch
mov al,0Bh
int 10h
inc dx
cmp dx,105
jnz hseRWV3
;hewtee zuraas
mov cx,136
mov dx,85
hseWH1: mov ah,0ch
mov al,0Bh
int 10h
inc cx
cmp cx,156
jnz hseWH1
mov cx,190 ;2 dahi tsonhnii
mov dx,85
hseWH1b: mov ah,0ch
mov al,0Bh
int 10h
inc cx
cmp cx,210
jnz hseWH1b     
; hewtee zuraas 2
mov cx,136
mov dx,95
hseWH2: mov ah,0ch
mov al,0Bh
int 10h
inc cx
cmp cx,156
jnz hseWH2
mov cx,190
mov dx,95
hseWH2b: mov ah,0ch
mov al,0Bh
int 10h
inc cx
cmp cx,210
jnz hseWH2b
;hewtee zuraas 3
mov cx,136
mov dx,105
hseWH3: mov ah,0ch
mov al,0Bh
int 10h
inc cx
cmp cx,157
jnz hseWH3
mov cx,190
mov dx,105
hseWH3b: mov ah,0ch
mov al,0Bh
int 10h
inc cx
cmp cx,211
jnz hseWH3b

ret 

    



