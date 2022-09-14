.data

.text

main:
	li $v0, 5
	syscall
	move $t0,$v0
	
	li $v0, 5
	syscall
	move $t1,$v0
	
	li $t2, 1
	
	slt $t3,$t0,$t1
	beq $t2,$t3,maior
	
	li $v0, 1
	move $a0,$t0
	syscall
	li $v0, 10
	syscall
	
	maior:
	li $v0, 1
	move $a0,$t1
	syscall
	li $v0, 10
	syscall
