#Vizualização dos dados Atlas Esgoto e plotagem dos graficos

#Fazendo Leitura
library(readr)
BuscaInvest <- read_csv("atlas esgoto/BuscaInvest.csv")
View(BuscaInvest)

# Instalando e carregando o pacote ggplot2
#install.packages("ggplot2")
library(ggplot2)

# Criando o gráfico
UF <- BuscaInvest$sigla_uf
tamanho_fonte <- 15
grafico <- ggplot(BuscaInvest, aes(x = UF )) +
  geom_bar(aes(y = BuscaInvest$investimento_trat_colet *0.001 ), stat = "identity", fill = "blue") +
  geom_line(aes(y = BuscaInvest$populacao), color = "red", group = 1, size = 1.1) +
  scale_y_continuous(name = "Investimento (R$)", sec.axis = sec_axis(~.*10000, name = "População")) +
  labs(title = "Investimento e População por Estado") +
  theme_minimal() +
  theme(text = element_text(size = tamanho_fonte))
print(grafico)



