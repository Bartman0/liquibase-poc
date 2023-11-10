--liquibase formatted sql

--changeset richard.kooijman:4 labels:bomen_2,views,ADO_12345
--comment: create secured view
use catalog dpd1_dev;
use schema bomen_2;

CREATE OR REPLACE VIEW richardkooijman.stamgegevens_1_1 AS SELECT id, gbd_buurt_id, geometrie AS geometrie_1, CASE WHEN is_account_group_member('FP/MDW') THEN actuele_opkroonhoogte END AS actuele_opkroonhoogte, CASE WHEN is_account_group_member('FP/MDW') THEN type_beheerder END AS type_beheerder, CASE WHEN is_account_group_member('FP/MDW') THEN type_beheerder_plus END AS type_beheerder_plus, CASE WHEN is_account_group_member('FP/MDW') THEN beheergebied END AS beheergebied, CASE WHEN is_account_group_member('FP/MDW') THEN beoogde_opkroonhoogte END AS beoogde_opkroonhoogte, CASE WHEN is_account_group_member('FP/MDW') THEN boombeeld END AS boombeeld, boomhoogteklasse_actueel, CASE WHEN is_account_group_member('FP/MDW') THEN conditiescore END AS conditiescore, CASE WHEN is_account_group_member('FP/MDW') THEN controlefrequentie END AS controlefrequentie, CASE WHEN is_account_group_member('FP/MDW') THEN conversieid END AS conversieid, CASE WHEN is_account_group_member('FP/MDW') THEN type_eigenaar END AS type_eigenaar, CASE WHEN is_account_group_member('FP/MDW') THEN type_eigenaar_plus END AS type_eigenaar_plus, CASE WHEN is_account_group_member('FP/MDW') THEN bgttype END AS bgttype, CASE WHEN is_account_group_member('FP/MDW') THEN gemeente END AS gemeente, CASE WHEN is_account_group_member('FP/MDW') THEN guid END AS guid, CASE WHEN is_account_group_member('FP/MDW') THEN id_oudebeheerindeling END AS id_oudebeheerindeling, jaar_van_aanleg, CASE WHEN is_account_group_member('FP/MDW') THEN jaar_volgende_inspectie END AS jaar_volgende_inspectie, CASE WHEN is_account_group_member('FP/MDW') THEN omgevingsrisicoklasse END AS omgevingsrisicoklasse, CASE WHEN is_account_group_member('FP/MDW') THEN openbare_ruimte END AS openbare_ruimte, CASE WHEN is_account_group_member('FP/MDW') THEN snoeifase END AS snoeifase, CASE WHEN is_account_group_member('FP/MDW') THEN snoeifrequentie END AS snoeifrequentie, CASE WHEN is_account_group_member('FP/MDW') THEN soortnaam END AS soortnaam, stamdiameterklasse, CASE WHEN is_account_group_member('FP/MDW') THEN standplaats END AS standplaats, CASE WHEN is_account_group_member('FP/MDW') THEN standplaats_gedetailleerd END AS standplaats_gedetailleerd, CASE WHEN is_account_group_member('FP/MDW') THEN takvrije_stam END AS takvrije_stam, type_object, type_soortnaam, CASE WHEN is_account_group_member('FP/MDW') THEN vrije_doorrijhoogte END AS vrije_doorrijhoogte, CASE WHEN is_account_group_member('FP/MDW') THEN vrije_doorrijhoogte_primair END AS vrije_doorrijhoogte_primair, CASE WHEN is_account_group_member('FP/MDW') THEN vrije_doorrijhoogte_secundair END AS vrije_doorrijhoogte_secundair, soortnaam_kort, soortnaam_top
FROM bomen_2.stamgegevens_1_1
WHERE is_account_group_member('OPENBAAR')
;


--changeset richard.kooijman:5 labels:bomen_2,views,ADO_12345
--comment: create secured view
use catalog dpd1_dev;
use schema bomen_2;

CREATE OR REPLACE VIEW richardkooijman.aanvulling_1_0 AS SELECT identificatie, registratiedatum, naam, geometrie AS geometrie_1, geconstateerd, begin_geldigheid, eind_geldigheid, CASE WHEN is_account_group_member('HEEL/GEHEIM') THEN ligt_in_brk_gemeente END AS ligt_in_brk_gemeente, datum_actueel_tot
FROM bomen_2.aanvulling_1_0
WHERE is_account_group_member('OPENBAAR')
;

