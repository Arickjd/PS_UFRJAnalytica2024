#importando libs
install.packages("gridExtra")
library(ggplot2)
library(readr)
library(gridExtra)

emissaobr <- read_csv("emissão co2/emissao brasil.csv")
View(emissaobr)
emissaorg <- read_csv("emissão co2/emissao regiao.csv")
View(emissaorg)

#1o gráfico: emissão de co2 por ano de cada região
#convertendo a coluna ano para o formato date
emissaorg$ano <- as.Date(as.character(emissaorg$ano), format = "%Y")

#gerando gráfico de linhas com múltiplas séries temporais
tamanho_fonte <- 15
grafico1 <- ggplot(emissaorg, aes(x = emissaorg$ano, y = emissaorg$f0_, color = emissaorg$regiao)) +
  geom_line(size = 1.1) +
  scale_x_date(date_breaks = "2 year", date_labels = "%Y") +
  labs(title = "Emissão de CO2 ao Longo do Tempo por Região",
       x = "Ano",
       y = "Emissão por habitante",
       color = "Região") +
  theme_minimal()

#2o gráfico da emissão de co2 por ano do brasil
emissaobr$ano <- as.Date(as.character(emissaobr$ano), format = "%Y")

#gerando gráfico de linhas
tamanho_fonte <- 15
grafico2 <- ggplot(emissaobr, aes(x = emissaobr$ano, y = emissaobr$emissao_co2)) +
  geom_line(size = 1.1) +
  scale_x_date(date_breaks = "2 year", date_labels = "%Y") +
  labs(title = "Emissão de CO2 ao Longo do Tempo",
       x = "Ano",
       y = "Emissão por habitante") +
  theme_minimal()

# Gráfico combinado
tamanho_fonte <- 15
grafico_combinado <- ggplot() +
  # Linhas para a emissão de CO2 por ano de cada região
  geom_line(data = emissaorg, aes(x = ano, y = f0_, color = regiao), size = 1.1) +
  # Linhas para a emissão de CO2 por ano do Brasil
  geom_line(data = emissaobr, aes(x = ano, y = emissao_co2), size = 1.1, linetype = "dashed") +
  scale_x_date(date_breaks = "2 year", date_labels = "%Y") +
  labs(title = "Emissão de CO2 ao Longo do Tempo",
       x = "Ano",
       y = "Emissão por habitante",
       color = "Região") +
  theme_minimal()+
  theme(text = element_text(size = tamanho_fonte))
print(grafico_combinado)
