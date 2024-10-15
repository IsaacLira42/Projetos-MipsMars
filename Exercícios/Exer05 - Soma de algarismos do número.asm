.text

main:
	# Entrada do Número Inteiro
	addi $2, $0, 5
	syscall
	
	move $8, $2  #Número Completo
	addi $9, $0, 10  #Constante (10)
	
	# 3º Algarismo
	div $8, $9  #Divisão de xxx pela constante 10
	mfhi $25  #Resto da Divisão (Número extraido da ultima casa)
	mflo $8  #Atualização do Número inputado (sem a ultima casa)
	
	# 2º Algarismo
	div $8, $9
	mfhi $24
	mflo $8
	
	# 1º Algarismo
	div $8, $9
	mfhi $23
	
	# Soma dos algarismos
	add $24, $23, $24
	add $25, $24, $25
	
	# Preparação para o print
	move $4, $25  #Movendo a soma para o registrador $4
	addi $2, $0, 1
	syscall
	
	# Finalizando o Programa
	addi $2, $0, 10
	syscall