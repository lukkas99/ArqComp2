// R0 = R1 * R2
@R2
M=0

(LOOP)
@R1
D=M
@FIM
D;JEQ //IF R1 = 0 GOTO FIM
@R0
D = M
@R2
M = D + M
@R1
M = M - 1
@LOOP
0;JMP

(FIM)
@FIM
0;JMP
