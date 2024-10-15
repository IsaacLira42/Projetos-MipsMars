.text
main: addi $2, $0, 5 #cód leitura inteiros
      syscall #chamada do SO
      add $8, $0, $2
     
     
      addi $2, $0, 5
      syscall
      add $9, $0, $2


      add $10, $8, $9 #$10<= $8 + $9
      sub $11, $8, $9 #$11<= $8 - $9
      mul $12, $8, $9 #$11<= $8 * $9
      div $8, $9 # lo<= $8 / $9 (quo)
                 # hi<= $8 % $9 (resto)
      mflo $13   # $13 <= lo
      mfhi $14   # $14 <= hi  
     
      add $4, $0, $14
      addi $2, $0, 1 #cód impressão inteiros
      syscall
     
      add $4, $0, '/'
      addi $2, $0, 11 #cód impressão caracteres
      syscall
         
               
      add $4, $0, $13
      addi $2, $0, 1 #cód impressão inteiros
      syscall
