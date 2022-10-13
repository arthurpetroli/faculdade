.data

string: .space 25                       # tamanho da string
string2: .asciiz "sobrescrita"          # string que sera sobrescrita

.text

main:

    li      $v0,    8                   # leitura de string
    la      $a0,    string              # endereço da string
    la      $a1,    25                  # tamanho da string
    syscall 

    move    $a1,    $a0                 # copia o endereço da string para $a1

    la      $a0,    string2             # endereço da string vazia

    jal     copia                       # chama a função copia

    li      $v0,    4                   # syscall para imprimir string
    syscall 

    li      $v0,    10                  # syscall para finalizar o programa
    syscall 

copia:
    sub     $sp,    $sp,        4       # aloca espaço na pilha
    sw      $s0,    0($sp)              # salva o valor de $s0 na pilha
    move    $s0,    $zero               # copia o endereço da string para $s0
loop1:
    add     $t1,    $a1,        $s0     # $t1 = $a1 + $s0
    lb      $t2,    0($t1)              # $t2 = *($t1)
    add     $t3,    $a0,        $s0     # $t3 = $a0 + $s0
    sb      $t2,    0($t3)              # *($t3) = $t2
    beq     $t2,    $zero,      loop2   # se $t2 == 0, pula para loop2
    addi    $s0,    $s0,        1       # $s0 = $s0 + 1
    j       loop1                       # volta para loop1
loop2:
    lw      $s0,    0($sp)              # recupera o valor de $s0 da pilha
    add     $sp,    $sp,        4       # desaloca espaço da pilha
    jr      $ra                         # retorna para o endereço de retorno