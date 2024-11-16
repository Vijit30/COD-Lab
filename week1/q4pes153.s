#Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
#Half word
.data
a: .half 0x8000 , 0x0001
.text
la x10, a
lh x11,0(x10)
lh x12,2(x10)
add x13,x11,x12
sh x13,4(x10)
lhu x14,0(x10)
lhu x15,2(x10)
add x16,x15,x14
sh x16,6(x10)

# BYTE SIGNED & UNSIGNED ADDITION
.data
b: .byte 0x83 , 0x12
.text
la x10, b
lb x11,0(x10)
lb x12,1(x10)
add x13,x11,x12
sb x13,2(x10)
lbu x14,0(x10)
lbu x15,1(x10)
add x16,x15,x14
sb x16,4(x10)