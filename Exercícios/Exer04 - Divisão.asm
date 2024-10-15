.text

main:
	# 1º Nota
	addi $2, $0, 5  #Entrada
	syscall
	move $8, $2  #Mover valor de $2 para $8
	
	# 2º Nota
	addi $2, $0, 5  #Entrada
	syscall
	move $9, $2  #mvoer valor de $2 para $9
	
	# Divisor
	addi $10, $0, 2
	
	# Cálculo da Média
	add $11, $8, $9  #Soma das notas
	div $11, $10  #Divisão
	
	# Preparando a Impressão
	mflo $12
	move $4, $12
	addi $2, $0, 1
	syscall
	
	# Finalizar o Programa
	addi $2, $0, 10
	syscall