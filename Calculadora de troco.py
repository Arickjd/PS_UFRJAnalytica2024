print("Calculadora de Troco")

#receber valor do usuario 
valor = float(input(" "))
nota_moeda = [100, 50, 20, 10, 5, 2, 1, 0.5, 0.25, 0.1, 0.05, 0.01]
num_nota_moeda = []

#percorrer a lista das cedulas
for n in nota_moeda:
    #Usando divisão inteira para obter o número inteiro de notas/moedas
    rest = valor % n
    var1 = (valor - rest) // n
    #adicionando número da nota n
    num_nota_moeda.append(var1)
    valor = rest

print("NOTAS:")
print("nota(s) de R$100.00:", num_nota_moeda[0])
print("nota(s) de R$50.00:", num_nota_moeda[1])
print("nota(s) de R$20.00:", num_nota_moeda[2])
print("nota(s) de R$10.00:", num_nota_moeda[3])
print("nota(s) de R$5.00:", num_nota_moeda[4])
print("nota(s) de R$2.00:", num_nota_moeda[5])
print()
print("MOEDAS:")
print("moeda(s) de R$1.00:", num_nota_moeda[6])
print("moeda(s) de R$0.50:", num_nota_moeda[7])
print("moeda(s) de R$0.25:", num_nota_moeda[8])
print("moeda(s) de R$0.10:", num_nota_moeda[9])
print("moeda(s) de R$0.05:", num_nota_moeda[10])
print("moeda(s) de R$0.01:", num_nota_moeda[11])  
