.text 

main:
	# 1º entrada (HORAS)
	addi $2, $0, 5
	syscall
	move $8, $2
	# 2º entrada (MINUTOS)
	addi $2, $0, 5
	syscall
	move $9, $2
	# 3º entrada (SEGUNDOS)
	addi $2, $0, 5
	syscall
	move $10, $2
	
	# Constante (60)
	addi $25, $0, 60
	
	# Conversões
	mul $8, $8, $25  # Hora para minutos
	add $9, $9, $8   # Somar os minutos com as horas de foram convertidas para minutos
	mul $9, $9, $25  # Minutos para segundos
	add $10, $9, $10 # Somando os segundos com os inutos convertidos para segundos
	
	# Impressão dos segundos
	add $4, $0, $10
	addi $2, $0, 1
	syscall
	
	