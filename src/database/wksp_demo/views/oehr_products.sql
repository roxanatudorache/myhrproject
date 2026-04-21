create or replace force editionable view oehr_products (
    product_id,
    language_id,
    product_name,
    category_id,
    product_description,
    weight_class,
    warranty_period,
    supplier_id,
    product_status,
    list_price,
    min_price,
    catalog_url
) as
    select
        i.product_id,
        d.language_id,
        case
            when d.language_id is not null then
                d.translated_name
            else
                translate(i.product_name using nchar_cs)
        end as product_name,
        i.category_id,
        case
            when d.language_id is not null then
                d.translated_description
            else
                translate(i.product_description using nchar_cs)
        end as product_description,
        i.weight_class,
        i.warranty_period,
        i.supplier_id,
        i.product_status,
        i.list_price,
        i.min_price,
        i.catalog_url
    from
        oehr_product_information  i,
        oehr_product_descriptions d
    where
            d.product_id (+) = i.product_id
        and d.language_id (+) = sys_context('USERENV', 'LANG');


-- sqlcl_snapshot {"hash":"2e9d6a5ffb91122f8b37bf6e1e948b852e6cfd89","type":"VIEW","name":"OEHR_PRODUCTS","schemaName":"WKSP_DEMO","sxml":""}