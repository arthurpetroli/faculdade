# Faça um programa, em assembly do mips, que receba um valor inteiro do teclado, se esse valor for igual a 10 imprima-o na tela e saia do programa. Senão imprima 0 e saia do programa.

.data

.text

main:
    li $v0, 5 # load linked word
	syscall
	move $t0, $v0         #move valor de v0 para t0

    addi $t1, $t1, 10 # valor 10
    addi $t2, $t2, 0 # valor 0

    beq	$t0, $t1, exit	# if $t0 == $t1 then exit (se o valor for verdadeiro pula pra exit, se não for continua o código)

    li $v0, 1
    move $a0, $t2        #move valor de t2 para a0
    syscall                   #print dos valores

    li $v0, 10               
    syscall                   #saida do programa

    exit:

    li $v0, 1
    move $a0, $t0        #move valor de t0 para a0
    syscall                   #print dos valores

    li $v0, 10
    syscall                   #saida do programa