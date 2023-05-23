soma:

add a0, a0, a1

ret

main:
addi sp, sp, -4 #salvar o ra na pilha
sw ra,0(sp)
addi t0, zero, 4
ecall
add a1, zero, a0
addi t0, zero, 4
ecall
call soma
addi t0, zero, 1
ecall
lw ra,0(sp) #recupar ra 
addi sp, sp, 4
ret