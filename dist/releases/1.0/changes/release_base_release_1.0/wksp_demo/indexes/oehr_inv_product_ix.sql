-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388991 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_inv_product_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_inv_product_ix.sql:null:4a1147df95d49d5a0a28ab5fd4a0a5df08d80fd7:create

create index oehr_inv_product_ix on
    oehr_inventories (
        product_id
    );

