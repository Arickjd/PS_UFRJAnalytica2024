#posições no xadrez
x = ["a","b","c","d","e","f","g","h"]
y = ["1","2","3","4","5","6","7","8"]

'''função para calcular um movimento
ela recebe o deslocamento horizontal(z) e o deslocamento vertical(w) e 
soma a posição horizontal(x) e posição vertical(y). essa operação é feita 
com numeros inteiros que depois serão os indices (mov = x[ind_x]+y[ind_y])
'''
def calcular_mov(z,w):
    try:
        ind_x = x.index(inicial_x) + z
        ind_y = y.index(inicial_y) + w
        if ind_x>0 and ind_y>0:
            mov = x[ind_x]+y[ind_y]
            mov_poss.append(mov)
    except:
        ...

while True:
    #receber posição do usuario no formato "a1 b2"
    posicao = input(">")

    #if para encerrar o processo
    if posicao == "f":
        print("Fim...")
        break
    #separando os eixos da posição inicial (para realizar os calculos) e posição final 
    inicial_x = posicao[0]
    inicial_y = posicao[1]
    final = posicao.split()[1]

    mov_poss = []

    #calculando todas as movimentações possiveis
    calcular_mov(2,1)
    calcular_mov(2,-1)
    calcular_mov(-2,1)
    calcular_mov(-2,-1)
    calcular_mov(1,2)
    calcular_mov(1,-2)
    calcular_mov(-1,2)
    calcular_mov(-1,-2)

    if final in mov_poss:
        print("VÁLIDO")
    else:
        print("INVÁLIDO")
