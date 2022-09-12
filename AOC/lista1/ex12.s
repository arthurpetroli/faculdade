.data

.text

main:
	li $t0, 0
	
	li $t1, 5
	
	li $t0, 1

    li $t2, 1
	
	#chamada de sistema para imprimir resultado

#laço:

	bgt	$t1, $t2, sai
    
    li $v0, 1
    move $a0, $t0
	syscall
	li $v0, 10
	syscall

sai:  

    addi $t1, $t1, -1

    beq	$t2, $t1, sai2
    
    addi $t2, $t2, 1
    addi $t0, $t0, 5

sai2:
   
    li $t2, 1