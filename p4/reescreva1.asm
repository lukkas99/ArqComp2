//reescreva o programa abaixo em assembly
// a = 10
// b = 25 
// while ( a != b){
// if a < b { a = a + 5}
// else     { b = b + 5}    
//}


@10
D = A
@A
M = D
@25
D = A
@B
M = D

(LOOP)
@A
D = D - M
@END
D;JEQ
@maior
D;JLE
@5
D = A
@A
M = M + D
@B
D = M
@LOOP          
D;JGT 

(maior)
@B
D = M
@A
D = D - M
@END
D;JEQ
@LOOP
D;JGT
@5
D = A
@B
M = M + D
@B
D = M
@maior         
D;JGT 

(END)           //encerramento
@END
0;JMP
