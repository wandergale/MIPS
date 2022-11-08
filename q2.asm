.data
	Resultado: .asciiz "Resultado: "
	Igual: .asciiz "Igual" # testando condição
	myArray:
		.align 2
		.space 1204
		
.text
	move $t0, $zero
	move $t1, $zero
	li $t2, 1204
	
	li $t3, 15
	li $t4, 300
	lw $t5, myArray($t4)
	
	loop:
		beq $t4, $t5, soma
		
		beq $t0, $t2, endLoop
		sw $t1, myArray($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		
		j loop
	
	endLoop:
		# pode colocar funcao de printar aqui
					
	soma:
		add $t6, $t3, $t5
		sw $t6, myArray($t4)
		
		lw $t5, myArray($t4)
		
		
		li $v0, 4
		la $a0, Resultado
		syscall
		
		li $v0, 1
		move $a0, $t5
		syscall
		
