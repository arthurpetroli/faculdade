a =  10
b = 6 

soma = a + b 
subtracao = a - b
multiplicacao = a * b
divisao = a / b
resto = a % b

print(soma)
print(subtracao)
print(multiplicacao)
print(divisao)
print(resto)

print("soma:" + str(soma))

print("soma:{}" .format(soma))

print("soma:{} \nsubtracao:{} \nmultiplicacao:{} \ndivisao:{} \nresto:{} "  .format(soma , subtracao, multiplicacao, divisao, resto))
#ou 
print("soma:{soma} \nsubtracao:{sub} \nmultiplicacao:{mult} \ndivisao:{div} \nresto:{resto} "  .format(soma=soma , sub=subtracao, mult=multiplicacao, div=divisao, resto=resto))


a = int(input("Digite um numero:"))
b = int(input("Digite um numero:"))