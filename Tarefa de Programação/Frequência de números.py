print("Frequência de números: \n")
#lista para armazenar os numeros informados pelo usuario
lista = []

while True:
    #verificar se o input é um numero 
    try:
        num = input(" ")
        if num == "f":
            break
        num = int(num)    
        lista.append(num)
    except:
        ...


num_analisados = [] #numeros que a frequencia ja foi informada
for n in lista:
    #se a frequencia ja foi informada, passa para o prox elemento da lista 
    if n in num_analisados:
        continue
    
    #função count() retorna a frequencia de um elemento em uma lista
    freq = lista.count(n)

    
    if freq == 1:
        print(f"O numero {n} apareceu {freq} vez")
    else:
        print(f"O numero {n} apareceu {freq} vezes")
    num_analisados.append(n)

print("Fim...")
