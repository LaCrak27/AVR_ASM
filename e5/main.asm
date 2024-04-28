.equ n = 3 ; Number to increment the table

ldi xl, 0x00
ldi xh, 0x01
ldi r17, 9 ; Loop iterations = r17 + 1 since we branch on negative, not on zero.
ldi r18, 1

loop_read:
	st X+, r18
	inc r18
	dec r17
	brmi end_read
	jmp loop_read

end_read:
	ldi xl, 0x00
	ldi xh, 0x01
	ldi yl, 0x20
	ldi yh, 0x01
	ldi r17, 9 ; Loop iterations = r17 + 1 since we branch on negative, not on zero (again).
	ldi r19, n

loop_write:
	ld r18, x+
	add r18, r19
	st y+, r18
	dec r17
	brmi end_write
	jmp loop_write

end_write:
	break