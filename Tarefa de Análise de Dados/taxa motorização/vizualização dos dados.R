#Vizualização dos dados Taxa motorização e plotagem dos graficos
library(ggplot2)

#Fazendo Leitura
library(readr)
TaxaMotor <- read_csv("taxa motorização/TaxaMotor.csv")
View(TaxaMotor)

#convertendo a coluna ano para o formato date
TaxaMotor$ano <- as.Date(as.character(TaxaMotor$ano), format = "%Y")

#gerando gráfico de linhas com múltiplas séries temporais
tamanho_fonte <- 15
ggplot(TaxaMotor, aes(x = TaxaMotor$ano, y = TaxaMotor$media_taxa_motorizacao, color = TaxaMotor$regiao)) +
  geom_line(size = 1.1) +
  scale_x_date(date_breaks = "2 year", date_labels = "%Y") +
  labs(title = "Taxa de Motorização ao Longo do Tempo por Região",
       x = "Ano",
       y = "Taxa de Motorização",
       color = "Região") +
  theme_minimal()
  


