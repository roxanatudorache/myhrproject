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


-- sqlcl_snapshot {"hash":"ae6581bfb2fced52cc4383ef9d6492c411cb7734","type":"VIEW","name":"OEHR_TORONTO_INVENTORY","schemaName":"WKSP_DEMO","sxml":""}