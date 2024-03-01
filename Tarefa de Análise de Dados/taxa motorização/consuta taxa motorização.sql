SELECT 
    ano,
    CASE 
        WHEN sigla_uf IN ('AC', 'AM', 'AP', 'PA', 'RO', 'RR', 'TO') THEN 'Norte'
        WHEN sigla_uf IN ('AL', 'BA', 'CE', 'MA', 'PB', 'PE', 'PI', 'RN', 'SE') THEN 'Nordeste'
        WHEN sigla_uf IN ('GO', 'MT', 'MS', 'DF') THEN 'Centro-Oeste'
        WHEN sigla_uf IN ('ES', 'MG', 'RJ', 'SP') THEN 'Sudeste'
        WHEN sigla_uf IN ('PR', 'RS', 'SC') THEN 'Sul'
        ELSE 'Outro'
    END AS regiao, 
    AVG(taxa_motorizacao) AS media_taxa_motorizacao
FROM `basedosdados.br_mobilidados_indicadores.taxa_motorizacao` 
GROUP BY ano, regiao
ORDER BY ano, regiao;
