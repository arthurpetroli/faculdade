.text

.text

main:
	li $t0, 5
    sw $t0, 36($sp)	
    
	li $t0, 20
    sw $t0, 156($sp)	
	
	lw	$t1, 36($sp)
    lw	$t2, 156($sp)

    add	$t3, $t1, $t2
    sw	$t3, 398($sp)

    lw	$t3, 398($sp)
	li $v0, 1
	syscall

	li $v0, 10
	syscall