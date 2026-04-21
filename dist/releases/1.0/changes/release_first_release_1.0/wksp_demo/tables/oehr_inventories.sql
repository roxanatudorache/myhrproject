-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548880 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/tables/oehr_inventories.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/oehr_inventories.sql:null:b71582672a093dfc8081ac584be1bc3f81a39d5b:create

create table oehr_inventories (
    product_id       number(6, 0),
    warehouse_id     number(3, 0)
        constraint oehr_inventory_warehouse_id_nn not null enable,
    quantity_on_hand number(8, 0)
        constraint oehr_inventory_qoh_nn not null enable
);

alter table oehr_inventories
    add constraint oehr_inventory_pk primary key ( product_id,
                                                   warehouse_id ) disable;

