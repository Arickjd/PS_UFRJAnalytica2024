SELECT 
    ano,
    CASE 
        WHEN sigla_uf IN ('AC', 'AM', 'AP', 'PA', 'RO', 'RR', 'TO') THEN 'Norte'
        WHEN sigla_uf IN ('AL', 'BA', 'CE', 'MA', 'PB', 'PE', 'PI', 'RN', 'SE') THEN 'Nordeste'
        WHEN sigla_uf IN ('GO', 'MT', 'MS', 'DF') THEN 'Centro-Oeste'
        WHEN sigla_uf IN ('ES', 'MG', 'RJ', 'SP') THEN 'Sudeste'
        WHEN sigla_uf IN ('PR', 'RS', 'SC') THEN 'Sul'
        ELSE 'Outro'
    END AS regiao,ROUND(AVG(emissao_co2),1), ROUND(AVG(emissao_mp),1)
FROM `basedosdados.br_mobilidados_indicadores.emissao_co2_material_particulado` 
GROUP BY ano, regiao
LIMIT 100