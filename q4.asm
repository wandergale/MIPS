.data
	espaco: .asciiz " "

.text
	li $s3, 0
	li $s4, 10
	
	loop:
		beq $s3, $s4, endLoop
		addi $s3, $s3, 1
		j loop
	endLoop:
		li $s5, 1
		addi $s4, $s4, 1
		print:
			beq $s5, $s4, endPrint
			li $v0, 1
			move $a0, $s5
			syscall
			
			li $v0, 4
			la $a0, espaco
			syscall
		
			addi $s5, $s5, 1
			j print
		endPrint:
	