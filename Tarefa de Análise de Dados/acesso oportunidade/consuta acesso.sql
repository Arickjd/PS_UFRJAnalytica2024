SELECT DISTINCT id_municipio, 
  SUM(quantidade_pessoas) AS populacao, 
  SUM(quantidade_estabelecimentos_ensino) AS estabelecimentos_ensino, 
  SUM(quantidade_estabelecimentos_saude) AS estabelecimentos_saude
FROM `basedosdados.br_ipea_acesso_oportunidades.estatisticas_2019` 
GROUP BY id_municipio
ORDER BY populacao DESC
