.data

.text

main:
	li $v0, 5
	syscall
	move $t0,$v0
	
	li $t1, 10
	li $t2, 0
	
	#chamada de sistema para imprimir resultado
	beq $t0,$t1,levoras
	li $v0, 1
	move $a0,$t2
	syscall
	li $v0, 10
	syscall
	
levoras:  

	li $v0, 1
	move $a0,$t1
	syscall
	li $v0, 10
	syscall