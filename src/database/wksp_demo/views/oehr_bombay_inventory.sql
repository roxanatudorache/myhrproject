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


-- sqlcl_snapshot {"hash":"3fbf81902bc8ae83cb1233d1c72b3bfc4dde1722","type":"VIEW","name":"OEHR_BOMBAY_INVENTORY","schemaName":"WKSP_DEMO","sxml":""}