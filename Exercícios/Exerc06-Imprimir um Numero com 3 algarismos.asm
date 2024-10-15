.text

main:
	# Entrada do número inteiro
	addi $2, $0, 5
	syscall
	
	move $24, $2  # Movendo Número inputado para $24
	addi $25, $0, 10  #Constante
	
	# Algarismo das Unidades
	div $24, $25
	mfhi $8
	mflo $24
	
	# Algarismo das Dezenas
	div $24, $25
	mfhi $9
	mflo $24
	
	# Algarismo das Centenas
	div $24, $25
	mfhi $10
	
	# Impressão
	#Imprime o algarismo da casa da centena
	move $4, $10
	addi $2, $0, 1
	syscall
	#Imprime o algarismo da casa da dezena
	move $4, $9
	addi $2, $0, 1
	syscall
	#Imprime o algarismo da casa da unidade
	move $4, $8
	addi $2, $0, 1
	syscall