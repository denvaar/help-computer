mov ah, 0x0e ; tty mode
mov al, 'h'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'p'
int 0x10
mov al, ' '
int 0x10
mov al, 'c'
int 0x10
mov al, 'o'
int 0x10
mov al, 'm'
int 0x10
mov al, 'p'
int 0x10
mov al, 'u'
int 0x10
mov al, 't'
int 0x10
mov al, 'e'
int 0x10
mov al, 'r'
int 0x10

jmp $ ; jump to current address = infinate loop

times 510-($-$$) db 0 ; Fill with 510 zeros, minus the size of the previous code
dw 0xaa55 ; Magic number
