strcmp:
  add t2, a0, zero    
  add t3, a1, zero    

loop:
  lbu t0, 0(t2)       
  lbu t1, 0(t3)       

  beqz t0, equal      # Se t0 for zero, chegamos ao final da primeira string
  beqz t1, not_equal  # Se t1 for zero, chegamos ao final da segunda string

  bne t0, t1, not_equal  # Compara os caracteres, se forem diferentes, vai para not_equal

  addi t2, t2, 1      
  addi t3, t3, 1      
  j loop

equal:
  addi a0, zero, 0    
  ret

not_equal:
  addi a0, zero, 1    
  ret

main:
  # Ler a primeira string
  addi sp, sp, -4
  sw ra, sp, 0
  addi a0, zero, 0x000005e0
  addi a1, zero, 5
  addi t0, zero, 6
  ecall

  # Ler a segunda string
  addi a0, zero, 0x000005d0
  addi a1, zero, 6
  ecall

  addi a0, zero, 0x000005e0
  addi a1, zero, 0x000005d0
  call strcmp

  # Verificar o resultado
  beqz a0, strings_equal    
  addi a0, zero, 1          
  j end

strings_equal:
  addi a0, zero, 0          

end:

addi t0, zero, 1
ecall

  lw ra, sp, 0
  addi sp, sp, 4

  ret
