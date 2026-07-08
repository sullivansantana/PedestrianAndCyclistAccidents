--dentificar todas las variantes
--SELECT
--    '"' || dia || '"' AS valor_original,
--    LENGTH(dia) AS longitud,
--    COUNT(*) AS total
--FROM fact_accidentes
--GROUP BY dia
--ORDER BY dia;

--eliminar espacios
SELECT
    TRIM(dia) AS dia,
    COUNT(*) AS accidentes
FROM fact_accidentes
GROUP BY TRIM(dia);

--Remove accents
UPDATE fact_accidentes
SET dia =
REPLACE(
REPLACE(
REPLACE(
REPLACE(
REPLACE(LOWER(TRIM(dia)),
'á','a'),
'é','e'),
'í','i'),
'ó','o'),
'ú','u');