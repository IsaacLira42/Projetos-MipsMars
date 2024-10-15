.text

main:
	# Entrada do Número Inteiro
	addi $2, $0, 5
	syscall
	
	move $24, $2  #Armazenar o input no registrador $24
	addi $25, $0, 10  #Constante usada na divisão (10)
	
	# Numero das unidades
	div $24, $25
	mfhi $8
	mflo $24
	# Numero das Dezenas
	div $24, $25
	mfhi $9
	mflo $24
	# Numero das centenas
	div $24, $25
	mfhi $10
	mflo $24
	# Numero dos milhares
	div $24, $25	
	mfhi $11
	
	# Preparando a impressão
	# Imprimindo o 1º Número
	add $4, $0, $8
	addi $2, $0, 1
	syscall
	
	# Quebra de linha
	addi $4, $0, 10
	addi $2, $0, 11
	syscall
	
	# Imprimindo o 2º Número
	add $4, $0, $9
	addi $2, $0, 1
	syscall
	
	# Quebra de linha
	addi $4, $0, 10
	addi $2, $0, 11
	syscall
	
	# Imprimindo o 3º Número
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	# Quebra de linha
	addi $4, $0, 10
	addi $2, $0, 11
	syscall
	
	# Imprimindo o 4º Número
	add $4, $0, $11
	addi $2, $0, 1
	syscall