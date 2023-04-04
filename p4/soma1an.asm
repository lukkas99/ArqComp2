//calcule 1 + 2 + 3 + .... + n
//n deve ser lido o registrador R0
//o resultado deve ser armazenado em R1

@0
D=M
(LOOP)
@1 
D=0
M=D+1
@0
M=D-1
@fim
D;JEQ 
goto LOOP
(fim)
@fim
0;JMP