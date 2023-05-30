main:

loop:
# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall

#Verificar se o numero = zero
beqz a0, ehzero

# Verificar se o numero = par ou impar
andi t2, a0, 1   # Verificar o bit menos significativo

# adicionar o numero a soma apropriada
beqz t2, somapar   # Se for par, pular para somapar
j loop
        
somapar:
add t1, t1, a0     # Se for par, adicionar ao somatorio de pares
j loop

ehzero:
#imprimir 
add a0, zero, t1   
addi t0, zero, 1
ecall
        
ret