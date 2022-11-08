.data 
	Resultado: .asciiz "Resultado: "
.text
	
	li $s0, 1
	
	li $s1, 2
	
	li $s2, 55
	li $s3, 45

		
	beq $s0, $s1, Igual
	
	bne $s0, $s1, Diferente
	
	Diferente:
		sub $t2, $s2, $s3
		
		li $v0, 4
		la $a0, Resultado
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		#Encerrar
		li $v0, 10
		syscall
		
	Igual:
		add $t2, $s2, $s3
		
		li $v0, 4
		la $a0, Resultado
		syscall
		
		li $v0, 1
		move $a0, $t2
		syscall
		
		#Encerrar
		li $v0, 10
		syscall