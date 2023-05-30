main:
#iniciar variaveis
li t0, 0   # impares
li t1, 0   # pares

loop:
# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall

#Verificar se o numero = zero
beqz a0, end_program

# Verificar se o numero = par ou impar
andi t2, a0, 1   # Verificar o bit menos significativo

# adicionar o numero a soma apropriada
beqz t2, add_even   # Se for par, pular para add_even
add t1, t1, a0     # Se for impar, adicionar ao somatorio de impares
j continue
        
add_even:
add t0, t0, a0     # Se for par, adicionar ao somatorio de pares
        
continue:
j read_loop
        
end_program:
# calcular o resultado final
sub t3, t1, t0
        
# imprimir o resultado final
la a0, resultPrompt
li a7, 4
ecall

#imprimir   
addi a0, zero, t3 
addi t0, zero, 1
ecall
        
ret