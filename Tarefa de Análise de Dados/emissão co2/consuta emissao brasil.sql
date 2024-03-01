SELECT ano, ROUND(AVG(emissao_co2),1) AS emissao_co2, ROUND(AVG(emissao_mp),1) AS emissao_mp
FROM `basedosdados.br_mobilidados_indicadores.emissao_co2_material_particulado` 
GROUP BY ano
LIMIT 1000