//Escreva um programa que some os numeros de
// 0 a 10 e salve o resultado em R10

// i = 0
// r = 0
// while ( i < 10)
// {r = r + 1
//  i = i + 1
//  }
// r = R10

//comeca o loop
(LOOP)
@i              //index
M = M + 1       //incrementa 1 ao index 
D = M           // salva M em D
@0              // vai pra R0
M = M + D       // Soma R0 com D do index
@10             // vai até M10
D = D - A       // subtrai pra comparar se <0
@LOOP            
D;JLT           // se true volta pro loop
(END)           //encerramento
@END
0;JMP
