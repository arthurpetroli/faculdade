.text

.text

main:
	li $t0, 0
	
	li $t1, 10
	
	li $t2, 0
	
	#chamada de sistema para imprimir resultado

laço:

	bgt	$t0, $t1, sai	# if  > $t1 then target
    
    addi $t0, $t0, 1
   
    addi $t2, $t2, 10
    
sai:  

	li $v0, 1
    move $a0, $t0
    move $a1, $t2
	syscall
	li $v0, 10
	syscall