-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548552 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_ord_sales_rep_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_ord_sales_rep_ix.sql:null:ee4be17da5bc37f95cb1cb1c87e57f5be250718a:create

create index oehr_ord_sales_rep_ix on
    oehr_orders (
        sales_rep_id
    );

