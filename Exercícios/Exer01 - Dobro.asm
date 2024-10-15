.text

main:
	# Entrada do número que sera dobrado
	addi $2, $0, 5
	syscall
	move $8, $2
	
	addi $9, $0, 2  #Multiplicador. $9 <-- 2
	
	mul $10, $8, $9  # Operação de Multiplicação
	
	#Printar resposta
	move $4, $10  #Mover a resposta para o $4
	addi $2, $0, 1
	syscall
