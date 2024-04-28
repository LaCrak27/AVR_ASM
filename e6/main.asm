; Code for init of the subroutine:

ldi xl, 0x00
ldi xh, 0x01
ldi yl, 0x01
ldi yh, 0x01
ldi zl, 0x02
ldi zh, 0x01

ldi r16, 0x03
st x, r16
ldi r16, 0x02
st y, r16

call mem_add
jmp end

; Subroutine begins here
mem_add:
	push r16
	push r17
	ld r16, x
	ld r17, y
	add r17, r16
	st z, r17
	pop r17
	pop r16
	ret

end:
	break