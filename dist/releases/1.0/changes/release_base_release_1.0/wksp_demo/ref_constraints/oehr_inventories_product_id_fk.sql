-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389195 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_inventories_product_id_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_inventories_product_id_fk.sql:null:daf2553803f551d657ee71a4f1464dba865a0615:create

alter table oehr_inventories
    add constraint oehr_inventories_product_id_fk
        foreign key ( product_id )
            references oehr_product_information ( product_id )
        enable;

