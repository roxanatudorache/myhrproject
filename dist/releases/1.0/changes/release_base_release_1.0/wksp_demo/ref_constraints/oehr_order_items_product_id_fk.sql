-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389253 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_order_items_product_id_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_order_items_product_id_fk.sql:null:32feb9e052b534f1376c3c38c589a95cb87beacb:create

alter table oehr_order_items
    add constraint oehr_order_items_product_id_fk
        foreign key ( product_id )
            references oehr_product_information ( product_id )
        enable;

