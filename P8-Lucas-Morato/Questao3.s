maior:

addi t0, zero, 1
ecall

ret

main:
addi sp, sp, -4 #salvar o ra na pilha
sw ra,0(sp)

# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall
add t1, zero, a0

# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall
add t2, zero, a0

# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall
add t3, zero, a0

# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall
add t4, zero, a0

blt t1, t2, proximo
blt t1, t3, proximo
blt t1, t4, proximo

add a0, zero, t1 
call maior
proximo:

blt t2, t1, proximo1
blt t2, t3, proximo1
blt t2, t4, proximo1

add a0, zero, t2 
call maior
proximo1:

blt t3, t1, proximo2
blt t3, t2, proximo2
blt t3, t4, proximo2

add a0, zero, t3 
call maior
proximo2:

blt t4, t1, proximo3
blt t4, t2, proximo3
blt t4, t3, proximo3

add a0, zero, t4

proximo3:
call maior

lw ra,0(sp) #recupar ra 
addi sp, sp, 4


ret