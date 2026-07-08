--rename columns
ALTER TABLE fact_accidentes
RENAME COLUMN coordenada TO longitud;

ALTER TABLE fact_accidentes
RENAME COLUMN coordena_1 TO latitud;