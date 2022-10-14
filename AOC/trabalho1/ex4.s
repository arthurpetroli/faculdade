.data
mensagem:     .asciiz     "Digite as strings para comparação: "
sobrescrita:        .asciiz     "."
igual:      .asciiz     "As strings são iguais."
diferente:      .asciiz     "As strings são diferentes."

str1:       .space      80
str2:       .space      80

.text

main:

    la      $s2,        str1                            # carrega o endereço de str1 em $s2
    move    $t2,        $s2                             # copia o endereço de str1 em $t2
    jal     pegaString                                  # chama a função pegaString


    la      $s3,        str2                            # carrega o endereço de str2 em $s3
    move    $t2,        $s3                             # copia o endereço de str2 em $t2
    jal     pegaString                                  # chama a função pegaString


    lb      $t2,        ($s2)                           # carrega o caractere de str1 em $t2
    lb      $t3,        ($s3)                           # carrega o caractere de str2 em $t3
    bne     $t2,        $t3,            seDiferente     # compara os caracteres de str1 e str2

    la      $a0,        igual                           # carrega o endereço de igual em $a0
    li      $v0,        4
    syscall 
    li      $v0,        10
    syscall


seDiferente:
    la      $a0,        diferente                       # carrega o endereço de diferente em $a0
    li      $v0,        4
    syscall 
    li     $v0,        10
    syscall


pegaString:

    la      $a0,        mensagem                          # carrega o endereço de mensagem em $a0
    li      $v0,        4
    syscall 

    move    $a0,        $t2                             # carrega o endereço de str1 ou str2 em $a0
    li      $a1,        80                             # carrega o tamanho máximo da string em $a1
    li      $v0,        8
    syscall 

    la      $a0,        sobrescrita                     # carrega o endereço de sobrescrita em $a0
    lb      $a0,        ($a0)                           # carrega o caractere de sobrescrita em $a0
    lb      $t2,        ($t2)                           # carrega o caractere de str1 ou str2 em $t2
    beq     $t2,        $a0,            exit            # se o caractere de sobrescrita for igual ao caractere de str1 ou str2, termina a função pegaString

    jr      $ra


exit:
    li      $v0,        10
    syscall 