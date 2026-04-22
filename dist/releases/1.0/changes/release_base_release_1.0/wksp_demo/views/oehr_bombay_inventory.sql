-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389655 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/views/oehr_bombay_inventory.sql
-- sqlcl_snapshot src/database/wksp_demo/views/oehr_bombay_inventory.sql:null:3fbf81902bc8ae83cb1233d1c72b3bfc4dde1722:create

create or replace force editionable view oehr_bombay_inventory (
    product_id,
    product_name,
    quantity_on_hand
) as
    select
        p.product_id,
        p.product_name,
        i.quantity_on_hand
    from
        oehr_inventories i,
        oehr_warehouses  w,
        oehr_products    p
    where
            p.product_id = i.product_id
        and i.warehouse_id = w.warehouse_id
        and w.warehouse_name = 'Bombay';

