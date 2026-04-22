-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389102 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_prod_desc_translated_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_prod_desc_translated_ix.sql:null:e406603b4cea87de989596c9949f736b91813d7b:create

create index oehr_prod_desc_translated_ix on
    oehr_product_descriptions (
        translated_name
    );

