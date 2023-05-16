main:

addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
addi a0, a0, 2
addi t0, zero, 1 # escolhe a operacao de leitura de inteiro (1)
ecall

addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
bne a0, zero, main
ret