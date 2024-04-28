.equ n = 0x12

ldi r16, n
sts 0x0100, r16
lds r16, 0x0100
cpi r16, 0x00
brge positive
jmp negative

positive:
	inc r16
	sts 0x0101, r16
	jmp end

negative:
	com r16
	sts 0x0101, r16
	jmp end

end:
	break