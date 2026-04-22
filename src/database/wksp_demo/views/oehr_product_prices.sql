create or replace force editionable view oehr_product_prices (
    category_id,
    "#_OF_PRODUCTS",
    low_price,
    high_price
) as
    select
        category_id,
        count(*)        as "#_OF_PRODUCTS",
        min(list_price) as low_price,
        max(list_price) as high_price
    from
        oehr_product_information
    group by
        category_id;


-- sqlcl_snapshot {"hash":"2eb84a414c49fdb0778de0b1d7119de83b3744e6","type":"VIEW","name":"OEHR_PRODUCT_PRICES","schemaName":"WKSP_DEMO","sxml":""}