DROP TABLE IF EXISTS fact_accidentes;

CREATE TABLE fact_accidentes (
    id_accidente INTEGER PRIMARY KEY AUTOINCREMENT,
    no_folio TEXT,
    fecha_even TEXT,
    ano_evento INTEGER,
    mes INTEGER,
    dia INTEGER,
    hora TEXT,
    hora2 TEXT,
    condicion TEXT,
    tipo_de_ev TEXT,
    coordenada REAL,
    coordena_1 REAL,
    punto_1 TEXT,
    punto_2 TEXT,
    colonia TEXT,
    alcaldia TEXT,
    tipo_de_ve TEXT,
    tipo_de__1 TEXT,
    tipo_de__2 TEXT,
    tipo_de__3 TEXT,
    marca_de_v TEXT,
    marca_de_1 TEXT,
    marca_de_2 TEXT,
    marca_de_3 TEXT,
    lesiones INTEGER,
    edad_lesio INTEGER,
    total_occi INTEGER,
    occisos_fe INTEGER,
    occisos_ma INTEGER,
    total_lesi INTEGER,
    identidad TEXT,
    unidad_med TEXT,
    lugar_del_ TEXT,
    trasladado TEXT,
    hospital TEXT,
    prioridad TEXT,
    observacio TEXT,
    id_origen INTEGER,
    tipo_accidente TEXT
);

INSERT INTO fact_accidentes (
    no_folio, fecha_even, ano_evento, mes, dia, hora, hora2,
    condicion, tipo_de_ev, coordenada, coordena_1, punto_1, punto_2,
    colonia, alcaldia, tipo_de_ve, tipo_de__1, tipo_de__2, tipo_de__3,
    marca_de_v, marca_de_1, marca_de_2, marca_de_3, lesiones,
    edad_lesio, total_occi, occisos_fe, occisos_ma, total_lesi,
    identidad, unidad_med, lugar_del_, trasladado, hospital,
    prioridad, observacio, id_origen, tipo_accidente
)

SELECT
    no_folio, fecha_even, ano_evento, mes, dia, hora, hora2,
    condicion, tipo_de_ev, coordenada, coordena_1, punto_1, punto_2,
    colonia, alcaldia, tipo_de_ve, tipo_de__1, tipo_de__2, tipo_de__3,
    marca_de_v, marca_de_1, marca_de_2, marca_de_3, lesiones,
    edad_lesio, total_occi, occisos_fe, occisos_ma, total_lesi,
    identidad, unidad_med, lugar_del_, trasladado, hospital,
    prioridad, observacio, ID, 'CICLISTA'
FROM ciclistas

UNION ALL

SELECT
    no_folio, fecha_even, ano_evento, mes, dia, hora, hora2,
    condicion, tipo_de_ev, coordenada, coordena_1, punto_1, punto_2,
    colonia, alcaldia, tipo_de_ve, tipo_de__1, tipo_de__2, tipo_de__3,
    marca_de_v, marca_de_1, marca_de_2, marca_de_3, lesiones,
    edad_lesio, total_occi, occisos_fe, occisos_ma, total_lesi,
    identidad, unidad_med, lugar_del_, trasladado, hospital,
    prioridad, observacio, ID, 'PEATON'
FROM peatones;