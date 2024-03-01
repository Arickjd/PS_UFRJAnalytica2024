'''
Angulo entre as divisões do relógio: maiores -> 30° / menores -> 6°
movimentação dos ponteiros: maior -> 6°/min  menor -> 0.5°/min
Para encontrar angulo, calculamos o angulo do ponteiro menor,
subtraimos do deslocamento do ponteiro maior e somamos a movimentação do 
ponteiro menor, chegando na formula "angulo = 30*hora - 6*minuto + 0.5*minuto"
'''

print("Calculadora de Ângulo entre ponteiros do relógio")
print("digite a hora no formato hh:mm ou 'f' para sair do programa")

while True:
    #receber hora do usuario
    hora_str = input(">")

    #verificar se digitou 'f' para sair do programa
    if hora_str == "f":
      print("Fim...")
      break

    #separar hora e minutos e verificar se está no formato correto
    try:
      hora, minuto = map(str, hora_str.split(":"))
      a,b = hora[1],minuto[1] #verificar formato hh:mm
      hora = int(hora)
      minuto = int(minuto)
    except:
      print("Input inválido")
      continue

    #colocar hora no intervalo [0,11] para aplicar na formula
    if hora > 11:
      hora = hora - 12

    #verificar se a hora é válida
    if not 0 <= hora <= 11 or not 0 <= minuto <= 59:
      print("Erro")
      continue

    #fazer calculo do angulo de acordo com a formula desenvolvida
    angulo = 30*hora - 6*minuto + 0.5*minuto
    angulo = abs(angulo)
    
    #calcular o menor angulo
    if angulo > 180:
      angulo = angulo - 360
      angulo = abs(angulo)
    print(f"o menor ângulo é de {angulo}°")
