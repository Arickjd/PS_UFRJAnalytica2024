#dados do acesso a estabelecimento de educação e saude
library(ggplot2)
library(readr)
library(dplyr)

#Adicicionando coluna de nomes dos municipios
Acesso_a_Oportunidades <- Acesso_a_Oportunidades %>%
  mutate(municipio = c("São Paulo (SP)", "Rio de Janeiro (RJ)", "Salvador (BA)", "Brasília (DF)",
                       "Fortaleza (CE)", "Belo Horizonte (MG)", "Manaus (AM)", "Curitiba (PR)",
                       "Recife (PE)", "Porto Alegre (RS)", "Belém (PA)", "Goiânia (GO)",
                       "Guarulhos (SP)", "Campinas (SP)", "São Luís (MA)", "São Gonçalo (RJ)",
                       "Maceió (AL)", "Duque de Caxias (RJ)", "Natal (RN)", "Campo Grande (MS)"))

# Transforma os dados em formato longo
dados_longos <- pivot_longer(Acesso_a_Oportunidades,
                             cols = c(estabelecimentos_ensino, estabelecimentos_saude),
                             names_to = "Variavel", values_to = "Valor")

# Criação do gráfico de barras
tamanho_fonte <- 14
ggplot(dados_longos, aes(x = municipio, y = Valor, fill = Variavel)) +
  geom_bar(stat = "identity", position = "dodge") +
  labs(title = "Acesso a postos de saúde e educação por modo de transporte para as maiores cidades do Brasil",
       x = "Município",
       y = "Valor",
       fill = "Variável") +
  theme_minimal() +
  coord_flip() +
  theme(text = element_text(size = tamanho_fonte))

