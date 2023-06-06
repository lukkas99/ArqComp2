strlen:

addi t0, zero, 0

loop:

lbu t1, 0(a0)
beq t1, zero, fim
addi t0, t0, 1
addi a0, a0, 1
j loop

fim:

add a0, t0, zero
ret
