SELECT 
  sigla_uf, 
  SUM(populacao_urbana_2013) AS populacao, 
  ROUND(SUM(investimento_coleta_tratatamento),1) AS investimento_trat_colet,
  ROUND(1 - AVG(indice_sem_atendimento_sem_coleta_sem_tratamento),3) AS indice_atendimento,
  ROUND(SUM(investimento_coleta_tratatamento)/SUM(populacao_urbana_2013),2) AS invest_por_habit
FROM `basedosdados.br_ana_atlas_esgotos.municipio` 
GROUP BY sigla_uf
ORDER BY sigla_uf;