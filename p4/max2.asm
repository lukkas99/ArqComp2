// if(R1>R2) then R0 = R1 else R0 = R2
@1 
D=M
@2
D=D-M
@menor
D;JLE
@1
D=M
@0
M=D
@fim
0;JMP

(menor)
@2
D=M
@0
M=D
@fim
0;JMP

(fim)
@fim
0;JMP