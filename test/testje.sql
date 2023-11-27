--liquibase formatted sql

--changeset richard.kooijman:1 labels:test-label context:test-context
--comment: example comment
CREATE TABLE richardkooijman.test_table
(
 id   integer NOT NULL CONSTRAINT PK_1 PRIMARY KEY,
 name string NOT NULL
)
USING DELTA
 TBLPROPERTIES (delta.columnMapping.mode = 'name');
--rollback DROP TABLE richardkooijman.test_table;
