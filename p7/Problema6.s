.data
    prompt: .asciiz "Digite um número: "
    resultPrompt: .asciiz "O fatorial é: "
    newline: .asciiz "\n"
    
.text
    main:
        # Imprimir o prompt
        la a0, prompt
        li a7, 4
        ecall
        
        # Ler o número do teclado
        li a7, 5
        ecall
        
        # Armazenar o número lido em t0
        move t0, a0
        
        # Inicializar o fatorial como 1
        li t1, 1
        
        # Calcular o fatorial
        factorial_loop:
            beqz t0, end_factorial   # Se t0 for zero, pular para end_factorial
            
            mul t1, t1, t0   # Multiplicar t1 pelo valor atual de t0
            
            addi t0, t0, -1  # Decrementar t0
            
            j factorial_loop
        
        end_factorial:
        # Imprimir o resultado do fatorial
        la a0, resultPrompt
        li a7, 4
        ecall
        
        move a0, t1   # Colocar o resultado do fatorial em a0 para impressão
        li a7, 1
        ecall
        
        # Imprimir uma nova linha
        la a0, newline
        li a7, 4
        ecall
        
        # Encerrar o programa
        li a7, 10
        ecall