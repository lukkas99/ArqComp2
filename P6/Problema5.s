main:

addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
add t1, zero, a0
addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
add t2, t1, a0      # t2 = t1 + a0

ret