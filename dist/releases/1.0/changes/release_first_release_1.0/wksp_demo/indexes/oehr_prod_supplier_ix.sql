-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548580 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_prod_supplier_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_prod_supplier_ix.sql:null:eb98a7c9f42c6bf12c4e601c9da844a9f84859fa:create

create index oehr_prod_supplier_ix on
    oehr_product_information (
        supplier_id
    );

