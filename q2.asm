.data
	myArray:
		.align 2
		.space 1204
.text
	move $t0, $zero
	move $t1, $zero
	li $t2, 1204
	
	li $t3, 15
	
	loop:
		beq $t0, $t2, endLoop
		sw $t1, myArray($t0)
		addi $t0, $t0, 4
		addi $t1, $t1, 1
		
		j loop
	
	endLoop:
		move $t0, $zero
		print:
			beq $t0, $t2, endPrint
			li $v0, 1
			lw $a0, myArray($t0)
			syscall
			
			addi $t0, $t0, 4
			j print
		endPrint:
					
	