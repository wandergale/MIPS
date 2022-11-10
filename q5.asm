sll $a2, $a2, 2 # Deslocamento de bits a esquerda nesse caso 2
sll $a3, $a3, 2 # Deslocamento de bits a esquerda nesse caso 2

add $v0, $zero, $zero # $v0 receve a soma de dois zeros, pode ser considerado apenas como uma maneira de iniciar uma "variavel"
add $t0, $zero, $zero # $t0 receve a soma de dois zeros, ...

# letra A) A função do $v0 é quardar o tamanho do array, como podemos ver -
# - ele sempre será incrementado ($v0+=1) caso as posições nas duas arrays sejam iguais

	
# letra B) 
outer:
	add $t4, $a0, $t0 # $t4 recebendo a soma de $a0 e $t0 ... $t4 = $a0 + 0
	lw $t4, 0($t4) # Load Word - $t4 recebe o valor do array na posição $t4
	add $t1, $zero, $zero # inicia $t1
inner:
	add $t3, $a1, $t1 # $t3 recebe a soma de $a1 e $t1
	lw $t3, 0($t3) # Load Word - $t3 recebe o valor do array na posição $t3
	
	bne $t3, $t4, skip # condição not equal (Diferente) se $t3 for diferente de $t4 chama o skip
		
	addi $v0, $v0, 1 # soma um valor constante. Ex: $v0 += 1 ou %v0 = $v0 + 1
skip:
	addi $t1, $t1, 4 # soma um valor constante. Ex: $t1 += 4 ou %t1 = $t1 + 4
	bne $t1, $a3, inner # condição diferente se $t1 diferente $a3 chama inner
		
	addi $t0, $t0, 4 # soma um valor constante. Ex: $t0 += 4 ou %t0 $t0 + 4
	
	bne $t0, $a2, outer # se $t0 diferente de $a2 chama outer
