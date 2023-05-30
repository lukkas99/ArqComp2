main:

# ler um caracter do teclado (5)
addi t0, zero, 5
ecall

# maiuscula -> minuscula
addi a0, a0, 32

# imprime caracter (2)
addi t0, zero, 2
ecall

ret
