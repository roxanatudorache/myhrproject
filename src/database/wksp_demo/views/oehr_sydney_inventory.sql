create or replace force editionable view oehr_sydney_inventory (
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
        and w.warehouse_name = 'Sydney';


-- sqlcl_snapshot {"hash":"63e1b2683aee242b58881341d80ba13a89e32a66","type":"VIEW","name":"OEHR_SYDNEY_INVENTORY","schemaName":"WKSP_DEMO","sxml":""}