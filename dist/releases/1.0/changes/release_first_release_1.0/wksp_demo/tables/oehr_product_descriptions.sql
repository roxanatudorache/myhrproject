-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548993 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/tables/oehr_product_descriptions.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/oehr_product_descriptions.sql:null:070e5e9f2246ef44ffa86317035fa1c8c8a43742:create

create table oehr_product_descriptions (
    product_id             number(6, 0),
    language_id            varchar2(3 byte),
    translated_name        nvarchar2(50)
        constraint oehr_translated_name_nn not null enable,
    translated_description nvarchar2(2000)
        constraint oehr_translated_desc_nn not null enable
);

alter table oehr_product_descriptions
    add constraint oehr_prod_desc_pk primary key ( product_id,
                                                   language_id )
        using index enable;

