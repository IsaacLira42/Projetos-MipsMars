.text

main:
	# Entrada de Segundos
	addi $2, $0, 5
	syscall
	
	move $23, $2  #Movendo o valor em segundos para 0 $24
	addi $24, $0, 60  #Armazenando a constante 60 em $25
	addi $25, $0, 3600  #Valor para segundos --> horas (3600)
	
	# Segundos para Horas
	div $23, $25
	mflo $8  
	mfhi $23  #Atualizando o Número (resto da divisão)
	
	# segundos restantes para munitos
	div $23, $24
	mflo $9
	
	# Segundos 
	mfhi $10
	
	# Preparando impressão
	# Imprimir HORAS
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	# Imprimir ':'
	li $4, 58
	addi $2, $0, 11
	syscall
	# Imprimir MINUTOS
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	# Imprimir ':'
	li $4, 58
	addi $2, $0, 11
	syscall
	# Imprimir SEGUNDOS
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	# Finalizar Programa
	addi $2, $0, 10
	syscall
	