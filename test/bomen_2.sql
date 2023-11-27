--liquibase formatted sql

--changeset richard.kooijman:1 labels:bomen_2,ADO_12345
--comment: create schema
use catalog dpd1_dev;

create schema if not exists bomen_2;
-- rollback empty


--changeset richard.kooijman:2 labels:bomen_2,ADO_12345
--comment: create stamgegevens
use catalog dpd1_dev;
use schema bomen_2;

CREATE TABLE if not exists bomen_2.stamgegevens_1_1 (
	id BIGINT NOT NULL,
	gbd_buurt_id STRING,
	geometrie STRING,
	actuele_opkroonhoogte STRING,
	type_beheerder STRING,
	type_beheerder_plus STRING,
	beheergebied STRING,
	beoogde_opkroonhoogte STRING,
	boombeeld STRING,
	boomhoogteklasse_actueel STRING,
	conditiescore STRING,
	controlefrequentie STRING,
	conversieid STRING,
	type_eigenaar STRING,
	type_eigenaar_plus STRING,
	bgttype STRING,
	gemeente STRING,
	guid STRING,
	id_oudebeheerindeling STRING,
	jaar_van_aanleg BIGINT,
	jaar_volgende_inspectie BIGINT,
	omgevingsrisicoklasse STRING,
	openbare_ruimte STRING,
	snoeifase STRING,
	snoeifrequentie STRING,
	soortnaam STRING,
	stamdiameterklasse STRING,
	standplaats STRING,
	standplaats_gedetailleerd STRING,
	takvrije_stam STRING,
	type_object STRING,
	type_soortnaam STRING,
	vrije_doorrijhoogte STRING,
	vrije_doorrijhoogte_primair STRING,
	vrije_doorrijhoogte_secundair STRING,
	soortnaam_kort STRING,
	soortnaam_top STRING,
	PRIMARY KEY (id)
)
;
-- rollback empty


--changeset richard.kooijman:3 labels:bomen_2,ADO_12345
--comment: create aanvulling
use catalog dpd1_dev;
use schema bomen_2;

CREATE TABLE if not exists bomen_2.aanvulling_1_0 (
	identificatie STRING NOT NULL,
	registratiedatum TIMESTAMP_NTZ,
	naam STRING,
	geometrie STRING,
	geconstateerd BOOLEAN,
	begin_geldigheid TIMESTAMP_NTZ,
	eind_geldigheid TIMESTAMP_NTZ,
	ligt_in_brk_gemeente STRING,
	datum_actueel_tot TIMESTAMP_NTZ,
	PRIMARY KEY (identificatie)
)
;
-- rollback empty
