-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389755 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/views/oehr_toronto_inventory.sql
-- sqlcl_snapshot src/database/wksp_demo/views/oehr_toronto_inventory.sql:null:ae6581bfb2fced52cc4383ef9d6492c411cb7734:create

create or replace force editionable view oehr_toronto_inventory (
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
        and w.warehouse_name = 'Toronto';

