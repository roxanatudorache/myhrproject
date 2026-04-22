-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389244 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_order_items_order_id_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_order_items_order_id_fk.sql:null:bf096291db05c0b05bfa03dccdb35f15cb77dfed:create

alter table oehr_order_items
    add constraint oehr_order_items_order_id_fk
        foreign key ( order_id )
            references oehr_orders ( order_id )
                on delete cascade
        enable;

