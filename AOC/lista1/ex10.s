.text

.text

main:
	li $t0, 2
	
	li $t1, 10
	
	li $t2, 0

    li $t4, 1
    
    
    move $t2, $t0
	
	#chamada de sistema para imprimir resultado

	slt $t3,$t2,$t0
    bne	$t3, $t4, errado
    slti $t3,$t1,50
    bne	$t3, $t4, errado2
    
	move $t2,$t4
	li $v0, 1
    move $a0,$t2
	syscall
	li $v0, 10
	syscall
	
    errado:  

	li $v0, 1
	syscall
	li $v0, 10
	syscall 
    
errado2:  

	li $v0, 1
	syscall
	li $v0, 10
	syscall