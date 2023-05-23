main:

addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
andi s0, a0, 1 
beq s0, zero, ehpar
addi a0, a0, 67
addi t0, zero, 2
ecall
j fim
ehpar:
addi a0, a0, 76
addi t0, zero, 2
ecall
fim:
ret