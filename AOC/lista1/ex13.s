.data

vetor: .word 3, 0, 1, 2, -6, -2, 4, 10, 3, 7, 8, -9, -15, -20, -87, -100
.text

main:
	li $v0,5
    syscall
	move $t0, $v0

    la $s0, vetor
    li $t3, -100

    while:
        sll	$t4, $t1, 2
        add	$s1, $s0, $t4
        lw $t2, 0($s1)
        beq	$t2, $t3, sair
        beq	$t0, $t2, encontrou
        addi $t1, $t1, 1
        j while
    
encontrou:
    li $v0, 1
    move $a0, $t2
    syscall

sair:
    li $v0, 10
    syscall