.data

.text

main:
	li $t0, 15
	li $t1, 30
	add	$t3, $t0, $t1		# $t0 = $t1 + $t3
    
	#chamada de sistema para imprimir resultado
	li $v0, 1
	move $a0,$t3
	syscall
	li $v0, 10
	syscall
	
