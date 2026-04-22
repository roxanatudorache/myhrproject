-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388917 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_cust_email_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_cust_email_ix.sql:null:0532fb2604b6a322a19ee5cdabc8050ea8ef6a22:create

create index oehr_cust_email_ix on
    oehr_customers (
        cust_email
    );

