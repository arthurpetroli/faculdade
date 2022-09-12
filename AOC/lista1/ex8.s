.data

.text

main:
	li $v0, 5
	syscall
	move $t0,$v0
	
    li $v0, 5
	syscall
	move $t1,$v0

    li $t2,0

    li $t3,0
    
    
	
loop:
	beq	$t0, $t2, sai
    addi $t0, $t0, -1
    add $t3, $t3, $t1
    j loop

sai:  

    li $v0, 1
    move $a0, $t3
	syscall
	li $v0, 10
	syscall

