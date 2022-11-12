.data
	Resultado: .asciiz "Resultado: "

.text
	li $s1, 55
	li $s2, 45
	
	add $t0, $s1, $s2
	# t0 = 55 + 45
	
	li $v0, 4 # codigo para printar string
	la $a0, Resultado
	# printa a mensagem
	syscall
 
	li $v0, 1 # codigo para printar inteiro
	move $a0, $t0
	syscall
