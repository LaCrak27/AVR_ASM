; (using little-endian)

; Code to store numbers in memory and be able to test the excercise:

ldi r16, 0x10
sts 0x0100, r16
ldi r16, 0x01
sts 0x0101, r16
ldi r16, 0x20
sts 0x0102, r16
ldi r16, 0x02
sts 0x0103, r16

; Actual start of excercise:

lds r16, 0x0100
lds r17, 0x0101
lds r18, 0x0102
lds r19, 0x0103

add r18, r16
adc r19, r17

sts 0x0102, r18
sts 0x0103, r19

break

