.text

.text

main:
	li $t0, 3
	
	li $t1, 4
	
	li $t2, 10

    li	$t4, 1
    
    move $t2, $t0
	
	#chamada de sistema para imprimir resultado

	slt $t3,$t1,$t2
    bne	$t3, $t1, errado
    
	move $t2,$t1
    move $a0,$t2
	syscall
	li $v0, 10
	syscall
	
errado:  

	li $v0, 1
	syscall
	li $v0, 10
	syscall