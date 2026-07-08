
--¿Cuántos registros tiene la tabla?
--SELECT count(*) AS fact_accidentes
--FROM fact_accidentes


--¿Cuántos son de cada tipo?
--SELECT
--    tipo_accidente,
--    COUNT(*) AS total
--FROM fact_accidentes
--GROUP BY tipo_accidente;

--¿Hay valores nulos?
--SELECT COUNT(*)
--FROM fact_accidentes
--WHERE alcaldia IS NULL;

--Top alcaldías
--SELECT alcaldia, COUNT(*) AS accidentes
--FROM fact_accidentes
--GROUP BY alcaldia
--ORDER BY accidentes DESC

--Top meses con mas accidentes
--SELECT
--    ano_evento,
--    mes,
--    COUNT(*) AS accidentes
--FROM fact_accidentes
--GROUP BY ano_evento, mes
--ORDER BY ano_evento, accidentes DESC

--Top meses con mas accidentes
--SELECT
--    dia,
--    COUNT(*) AS accidentes
--FROM fact_accidentes
--GROUP BY ano_evento, mes
--ORDER BY ano_evento, accidentes DESC

--Tipos de accidente
--SELECT
--    tipo_accidente,
--    SUM(total_lesi) AS lesionados
--FROM fact_accidentes
--GROUP BY tipo_accidente;


--Total de occisos y lesionados por tipo de accidente
--SELECT
--    tipo_accidente,
--    SUM(total_occi) AS occisos,
--    SUM(total_lesi) AS lesionados
--FROM fact_accidentes
--GROUP BY tipo_accidente;

--Lesiones mas comunes en acidentes de ciclistas
--SELECT
--	lesiones,
--	COUNT(*) AS TOTAL
--FROM fact_accidentes
--WHERE tipo_accidente="CICLISTA"
--GROUP BY lesiones
--ORDER BY TOTAL DESC

--Lesiones mas comunes en acidentes de Peatones
--SELECT
--	lesiones,
--	COUNT(*) AS TOTAL
--FROM fact_accidentes
--WHERE tipo_accidente="PEATON"
--GROUP BY lesiones
--ORDER BY TOTAL DESC

