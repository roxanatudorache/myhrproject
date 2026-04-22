-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389088 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_order_items_uk.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_order_items_uk.sql:null:8799ab9ca7126c74d6f6fb87dff301ecc33ec598:create

create unique index oehr_order_items_uk on
    oehr_order_items (
        order_id,
        product_id
    );

