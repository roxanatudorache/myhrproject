-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389095 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_prod_desc_prod_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_prod_desc_prod_ix.sql:null:6c5cb82dbc6eec163c3a40ae8fd8e5a9e42abb93:create

create index oehr_prod_desc_prod_ix on
    oehr_product_descriptions (
        product_id
    );

