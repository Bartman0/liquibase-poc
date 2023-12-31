--liquibase formatted sql

--changeset your.name:1 labels:example-label context:example-context
--comment: example comment
create table richardkooijman.person (
    id int primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE person;

--changeset your.name:A labels:example-label context:example-context
--comment: example comment
ALTER TABLE richardkooijman.person SET TBLPROPERTIES (
   'delta.columnMapping.mode' = 'name',
   'delta.minReaderVersion' = '2',
   'delta.minWriterVersion' = '5')
--rollback empty

--changeset your.name:2 labels:example-label context:example-context
--comment: example comment
create table richardkooijman.company (
    id int primary key not null,
    name varchar(50) not null,
    address1 varchar(50),
    address2 varchar(50),
    city varchar(30)
)
--rollback DROP TABLE company;

--changeset other.dev:3 labels:example-label context:example-context
--comment: example comment
alter table richardkooijman.person add column country varchar(2)
--rollback ALTER TABLE person DROP COLUMN country;

