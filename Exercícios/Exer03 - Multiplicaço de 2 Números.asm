.text

main:
	# 1º Número
	addi $2, $0, 5  #Entrada
	syscall
	move $8, $2  #Movendo o valor de $2 para $8
	
	# 2º Número
	addi $2, $0, 5  #Entrada
	syscall
	move $9, $2  #Movendo o valor de $2 para $9
	
	# Multiplicação
	mul $10, $8, $9  
	
	# Preparando a Impressão
	move $4, $10
	addi $2, $0, 1
	syscall
	
	# Finalizar Programa
	addi $2, $0, 10
	syscall