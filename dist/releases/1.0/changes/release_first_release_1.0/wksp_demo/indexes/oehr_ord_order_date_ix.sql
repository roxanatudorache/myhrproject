-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548544 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_ord_order_date_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_ord_order_date_ix.sql:null:3297bde6d0dd6843a5004c5e72d8a4ad36e65e77:create

create index oehr_ord_order_date_ix on
    oehr_orders ( sys_extract_utc(order_date) );

