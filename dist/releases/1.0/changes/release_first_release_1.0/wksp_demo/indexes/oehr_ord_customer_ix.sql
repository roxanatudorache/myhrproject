-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548536 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_ord_customer_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_ord_customer_ix.sql:null:69147f2aea02266181c6571808227a18bedb8f3a:create

create index oehr_ord_customer_ix on
    oehr_orders (
        customer_id
    );

