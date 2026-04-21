-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783549207 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/views/oehr_product_prices.sql
-- sqlcl_snapshot src/database/wksp_demo/views/oehr_product_prices.sql:null:2eb84a414c49fdb0778de0b1d7119de83b3744e6:create

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

