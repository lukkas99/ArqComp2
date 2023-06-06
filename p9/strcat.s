strcat:

addi sp, sp, -8
sw ra, 0(sp)
sw s0, 4(sp)
add s0, ao, zero
lbu t0, 0(a0)

loop:

beq: t0, zero, copia
addi a0, a0, 1
lbu t0, 0(a0)
j loop

copia:

call strcpy
add a0, s0, zero

lw s0, 4(sp)
lw ra, 0(sp)
addi sp, sp, 8
ret