main:

addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
beq a0, zero, ezero
andi s0, a0, 1 
beq s0, zero, ehpar
addi s2, s2, a0
j sub
ehpar:
addi s1, s1, a0
j sub 
sub:
sub a0, s2, s1 
addi t0, zero, 1 # escolhe a operação de escrita de inteiro (1)
ecall
ezero:
ret
