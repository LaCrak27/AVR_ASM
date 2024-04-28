.equ n1 = 0x06
.equ n2 = 0x08

ldi r17, n1
ldi r16, n2
add r16, r17
sts 0x0100, r16
break
