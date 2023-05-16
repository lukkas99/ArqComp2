main:

addi t0, zero, 4 # escolhe a operacao de leitura de inteiro (4)
ecall
addi t1, zero, 1    # t1 = 0 + 2
add t2, t1, a0      # t2 = t1 + a0

ret