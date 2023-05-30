somarec:

addi a1, a1, -1
add a0, a0, a1

beq a1, zero, fim
call somarec
ret

main:
addi sp, sp, -4 #salvar o ra na pilha
sw ra,0(sp)

# le um inteiro do teclado (4)
addi t0, zero, 4 
ecall

add a1, zero, a0

call somarec
fim:
addi t0, zero, 1
ecall
lw ra,0(sp) #recupar ra 
addi sp, sp, 4
ret