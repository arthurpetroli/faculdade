.data

.text

main:
	li $v0, 5
	syscall
	move $t0,$v0
	
	li $v0, 5
	syscall
	move $t1,$v0
	
	li $t4,1
	
	slt $t3,$t0,$zero
	beq $t4,$t3,menor
	
	while:

		beq $t0, $zero, sai
    		addi $t0, $t0, -1
    		add $t2, $t2, $t1
    	
    		j while

	sai:  
    
    		li $v0, 1
    		move $a0, $t2
		syscall
		li $v0, 10
		syscall
		
menor:

	slt $t3,$t1,$zero
	beq $t4,$t3,menor2
	

	while2:

		beq $t1, $zero, sai2
    		addi $t1, $t1, -1
    		add $t2, $t2, $t0
    	
    		j while2

	sai2:  
    
    		li $v0, 1
    		move $a0, $t2
		syscall
		li $v0, 10
		syscall

menor2:


	while3:

		beq $t1, $zero, sai3
    		addi $t1, $t1, 1
    		sub $t2, $t2, $t0
    	
    		j while3

	sai3:  
    
    		li $v0, 1
    		move $a0, $t2
		syscall
		li $v0, 10
		syscall
