.data

.text

main:
	li $v0, 5
	syscall
	move $t0,$v0
	
	li $v0, 5
	syscall
	move $t1,$v0
	
	li $t2, 0
	
	li $t3, 1
	
	li $t5, 10
	
	slt $t4,$t0,$zero
	beq $t4,$t3,maior0
	
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 10
	syscall
	
	maior0:
	beq $t1,$t5,igual
	slt $t4,$t5,$t1
	beq $t4,$t3,maior1
	
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 10
	syscall
	
	igual:
	li $t2, 1
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 10
	syscall
	
	maior1:
	li $t2, 1
	li $v0, 1
	move $a0, $t2
	syscall
	li $v0, 10
	syscall
