ldi r16, 0xE8
ldi r17, 0x03
ldi r18, 0x07
clr r0
; Total loop iterations: r17:r16
loop:
	push r18
	subi r16, 1
	sbc r17, r0
	cp r16, r0
	cpc r17, r0
	breq end
	jmp loop
end:
	break
	
