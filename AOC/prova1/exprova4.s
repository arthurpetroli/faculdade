.data
	v1: .word 10 , 20 , 30 , 40 , 50 , 60
	v2: .word 0 , 10 , -15 , 16 , 20 , 30
.text

main:
	li $t3, 5
	la $s0, v1
	la $s1, v2
	
	lw $t4, 0($s0)
	lw $t5, 0($s1)
	add $t6, $t4, $t5
	li $v0, 1
    	move $a0, $t6
	syscall
	
	
while:
	beq $t3, $zero, sair
	addi $t1, $t1, 4
	add $s2, $s0, $t1
	add $s3, $s1, $t1
	lw $t4, 0($s2)
	lw $t5, 0($s3)
	add $t6, $t4, $t5
	addi $t3, $t3, -1
	
	li $v0, 1
    	move $a0, $t6
	syscall
	
	j while
	
sair:
	li $v0, 1
	syscall
	li $v0, 10
	syscall
	

