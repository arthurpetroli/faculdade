.data


.text


main:
	li $v0, 5
	syscall
	move $a0, $v0
	
	li $v0, 5
	syscall
	move $a1, $v0
	
	jal soma
	
	move $a0, $v0
	li $v0, 1
	syscall
	
	li $v0, 10
	move $a0, $v0
	syscall
	
soma:
	addi $sp, $sp, 4
	sw $ra, 4($sp)
	
	add $v0, $a0, $a1
	
	lw $ra, 4($sp)
	addi $sp, $sp, 4
	
	jr $ra
