strcat:
  add t2, a0, zero   
  add t3, a1, zero   

loop:
  lbu t0, 0(t2)      

  beqz t0, copy     

  addi t2, t2, 1     
  j loop

copy:
  lbu t1, 0(t3)      

  beqz t1, end_copy  # Se t1 for zero, chegamos ao final da segunda string

  sb t1, 0(t2)       

  addi t2, t2, 1     
  addi t3, t3, 1     
  j copy

end_copy:
  sb zero, 0(t2)     # Adiciona o caractere nulo para indicar o final da string concatenada
  ret

main:
  # Ler a primeira string
  addi sp, sp, -14
  sw ra, sp, 0
  addi a0, sp, -10   
  addi a1, zero, 10  # Tamanho da primeira string
  addi t0, zero, 6   # Exemplo fornecido: t0 = 6
  ecall

  # Ler a segunda string
  addi a0, sp, -10   
  addi a1, zero, 10  # Tamanho da segunda string
  addi t0, zero, 6   # Exemplo fornecido: t0 = 6
  ecall

  addi a0, sp, -10   
  addi a1, sp, -5    
  call strcat

  # Exibir a string concatenada
  addi a0, sp, -10  
  jal ra, print_string

end:
  lw ra, sp, 0
  addi sp, sp, 14    # Ajustar o ponteiro de pilha

  ret

print_string:
  li a7, 1       
  ecall           
  ret
