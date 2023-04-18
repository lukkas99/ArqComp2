//calcule 1 + 2 + 3 + .... + n
//n deve ser lido o registrador R0
//o resultado deve ser armazenado em R1

@1 
M = 1 

@SUM
M = 0

(LOOP)
@i
D = M
@R0
D = D - M
@PARE
D;JGT    //IF ( I > R0) GO TO PARE

@SUM
D = M
@i
D = D + M
@SUM
M = D   //SUM = SUM + 1

@i
M = M + 1    //I = I + 1
@LOOP
0;JMP

(PARE)
@SUM
D = M
@R1
M = D       //R1 = SUM

(FIM)
@FIM
0;JMP
