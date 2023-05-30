main:

# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall

#faz um and entre (a0) e 1 para verificar se o bit menos significativo é 0 ou 1
andi s0, a0, 1 

#se resultado de (s0) = 0, pula pro ehpar 
beq s0, zero, ehpar

#se for impar carrega 73 em (a0)
addi a0, zero, 73

#imprime char (2)
addi t0, zero, 2
ecall
j fim

ehpar:
#carrega 80 em (a0)
addi a0, zero, 80

#imprime char (2)
addi t0, zero, 2 
ecall
fim:

ret