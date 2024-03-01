#importando bibliotecas
library(ggplot2)
library(readr)
library(gridExtra)

#fazendo leitura dos datasets
emissaorg <- read_csv("emissão co2/emissao regiao.csv")
View(emissaorg)
TaxaMotor <- read_csv("Tarefa de Análise de Dados/taxa motorização/TaxaMotor.csv")
View(TaxaMotor)

#fazendo recorte temporal nos dados, pois não cobrem a mesma faixa de tempo (usaremos um recorte de 6 anos)
TaxaMotor <- TaxaMotor[TaxaMotor$ano >= 2007 & TaxaMotor$ano <= 2012,]
View(TaxaMotor)
emissaorg <- emissaorg[emissaorg$ano >= 2007 & emissaorg$ano <= 2012,]
View(emissaorg)

# Juntando dois datasets pelo ano 
dados_juntos <- merge(TaxaMotor, emissaorg, by = c("ano","regiao"))
View(dados_juntos)

# Selecionando as séries temporais relevantes
serie_taxa_motorizacao <- dados_juntos$media_taxa_motorizacao
serie_emissao_co2 <- dados_juntos$f0_
# Calculando a correlação entre as séries temporais
correlacao <- cor(serie_taxa_motorizacao, serie_emissao_co2)
print(correlacao)

# Plotando o gráfico de dispersão das séries temporais
plot(serie_taxa_motorizacao, serie_emissao_co2,
     xlab = "Taxa de Motorização", ylab = "Emissão de CO2",
     main = "Relação entre Taxa de Motorização e Emissão de CO2",
     col = "blue", 
     pch = 16,     
     xlim = c(0, max(serie_taxa_motorizacao) * 1.1), 
     ylim = c(0, max(serie_emissao_co2) * 1.1),       
     cex = 1.2,   
     col.main = "darkblue")      

