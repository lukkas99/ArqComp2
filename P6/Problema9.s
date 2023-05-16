main:

addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
beq a0, zero, fim

addi t1, zero, 10
loop:

addi a0, a0, 1
addi t0, zero, 1 # escolhe a operacao de leitura de inteiro (1)
ecall

addi t1, t1, -1
bge t1, zero, loop

fim:
ret