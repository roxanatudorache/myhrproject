-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389295 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/tables/oehr_countries.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/oehr_countries.sql:null:5e683d318a77edc61a9a27dc6dd0b1d953e74b44:create

create table oehr_countries (
    country_id   char(2 byte)
        constraint oehr_country_id_nn not null enable,
    country_name varchar2(40 byte),
    region_id    number
);

alter table oehr_countries
    add constraint oehr_country_c_id_pk primary key ( country_id )
        using index enable;

