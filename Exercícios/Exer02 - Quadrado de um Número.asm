.text

main:
	# Entrada do Número
	addi $2, $0, 5
	syscall
	
	move $8, $2  #Movendo o número que sera elevado ao quadrado para $8
	
	mul $8, $8, $8  #Eleva o valor ao quadrado
	
	# Impressão
	move $4, $8  #Move o valor de $8 para $4 (Para ser impresso)
	addi $2,$0, 1
	syscall
	
	# Finalizar o Programa
	addi $2, $0, 10
	syscall