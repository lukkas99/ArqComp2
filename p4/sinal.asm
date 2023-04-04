//if (R0 >= 0) then R1 = 1 else R1 = -1
@0
D=M
@menorque0
D;JLT
@1
M=1
@fim
0;JMP

(menorque0)
@1
D=-1
M=D
@fim
0;JMP

(fim)
@fim
0;JMP