 Passos para as Operações de Soma/Subtração
 1. Verifique zero;
 2. Alinhe a mantissa; 
 3. Soma ou subtraia mantissa;
 4. Normalize resultado.

A adição e a subtração são idênticas, exceto por uma mudança de sinal:
    Se essa for uma operação de subtração, o processo começa
alterando o sinal do subtraendo;
    Em seguida, se algum operando for 0, o outro é informado
como o resultado.


Operações de Soma/Subtração – Alinhamento da mantissa
    A próxima fase é manipular os números de modo que os dois
expoentes sejam iguais.
    O alinhamento é obtido deslocando repetidamente a parte de
magnitude da mantissa 1 dígito para a direita, e aumentando o
expoente até que os dois expoentes sejam iguais.
    Se esse processo resultar em um valor 0 para a mantissa,
então o outro número é informado como resultado.


Operações de Soma/Subtração – Adição
    As duas mantissas são somadas, podendo ocasionar:
● 1. Resultado 0: Se as mantissas forem iguais em valor,
porém diferentes em sinal.
● 2. Overflow da mantissa por 1 dígito: A soma gerou um
carry.
    Se isso acontecer, a mantissa do resultado é deslocado
para a direita e o expoente é incrementado.
● 3. Overflow de expoente: O expoente foi incrementado e
passou do valor máximo.
    Isso seria informado e a operação encerrada.


Operações de Soma/Subtração – Normalização
    A fase final normaliza o resultado.
    Consiste no deslocamento dos dígitos da mantissa para a
esquerda até que o dígito mais significativo seja diferente de
zero.
    Cada deslocamento causa um decremento do expoente e,
portanto, poderá ocasionar um underflow do expoente.
    Finalmente, o resultado poderá ser arredondado e depois
informado.

