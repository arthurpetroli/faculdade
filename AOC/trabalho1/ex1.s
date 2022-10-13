.data
input:	.space	256
.text
main:
    li      $v0,    8               # lê string digitada pelo usuário
    la      $a0,    input           # endereço da string
    syscall 

    jal     strlen                  # chama strlen

    move    $a0,    $t2             # move o tamanho da string para $a0
    li      $v0,    1               # escreve inteiro
    syscall 

    li      $v0,    10              # syscall para encerrar o programa
    syscall 

strlen:
    li      $t0,    0               # contador
    li      $s2,    0               # contador

loop:
    add     $s2,    $a0,    $t0     # endereço do caractere
    lb      $t1,    0($s2)          # carrega caractere
    beqz    $t1,    exit            # se for nulo, sai
    addi    $t0,    $t0,    1       # incrementa contador
    j       loop                    # volta para o loop

exit:
    addi    $t0,    $t0,    -1      # decrementa contador
    add     $t2,    $zero,  $t0     # guarda o tamanho da string
    add     $t0,    $zero,  $zero   # zera contador
    jr      $ra                     # retorna