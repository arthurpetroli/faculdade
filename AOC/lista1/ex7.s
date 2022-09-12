.text

.text

main:
	li $v0, 5
	syscall
	move $t0,$v0
	
	li $v0, 5
	syscall
	move $t1,$v0
	
	li $t2,-111
	li $t3, 1
	
	#chamada de sistema para imprimir resultado
	beq $t0,$t1,levoras
	slt $t4,$t0,$t1
	beq $t4,$t3,levoras2
	
	li $v0, 1
	move $a0,$t0
	syscall
	li $v0, 10
	syscall
	
	levoras2:
	li $v0, 1
	move $a0,$t1
	syscall
	li $v0, 10
	syscall
	
levoras:  

	li $v0, 1
	move $a0,$t2
	syscall
	li $v0, 10
	syscall