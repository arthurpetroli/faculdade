.data

.text

main:
	li $t0, 10
	li $t1, 20
	addi$t0, $t0, 4		# $t0 = $t0 + 4
    subi$t1, $t1, 6		# $t1 = $t1 - 6

    sub	$t3, $t0, $t1
    
	#chamada de sistema para imprimir resultado
	li $v0, 1
	move $a0,$t3
	syscall
	li $v0, 10
	syscall