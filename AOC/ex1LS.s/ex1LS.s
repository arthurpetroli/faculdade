.data



.text

main:
	li $t0,5
	sw $t0,36($sp)
	
	li $t1,20
	sw $t1,156($sp)
	
	lw $t2,36($sp)
	lw $t3,156($sp)
	
	add $t4,$t2,$t3
	
	sw $t4,396($sp)
	
	#chamada de sistema para imprimir resultado
	lw $a0,396($sp)
	li $v0, 1
	syscall
	
	#chamada de sistema para sair do programa
	li $v0, 10
	syscall
