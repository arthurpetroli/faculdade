
.data

string1: .space 128
string2: .space 128
string3: .space 256

.text

main:

    li      $v0,        8               # lê string digitada pelo usuário
    la      $a0,        string1         # endereço da string
    syscall 
    move    $s2,        $a0             # salva o tamanho da string digitada pelo usuário

    li      $v0,        8               # lê string digitada pelo usuário
    la      $a0,        string2         # endereço da string
    syscall 
    move    $s3,        $a0             # salva o tamanho da string digitada pelo usuário

    la      $s1,        string3         # endereço da string

copiar1:
    lb      $t0,        0($s2)          # carrega o caractere da string1
    beqz    $t0,        copiar2         # se for igual a zero, terminou a string
    sb      $t0,        ($s1)           # salva o caractere na string3
    addi    $s2,        $s2,        1   # incrementa o endereço da string1
    addi    $s1,        $s1,        1   # incrementa o endereço da string3
    j       copiar1

copiar2:
    lb      $t0,        0($s3)          # carrega o caractere da string2
    beqz    $t0,        fim             # se for igual a zero, terminou a string
    sb      $t0,        ($s1)           # salva o caractere na string3
    addi    $s3,        $s3,        1   # incrementa o endereço da string2
    addi    $s1,        $s1,        1   # incrementa o endereço da string3
    j       copiar2

fim:
    li      $v0,        4
    la      $a0,        string3         # endereço da string
    syscall 

    li      $v0,        10
    syscall 