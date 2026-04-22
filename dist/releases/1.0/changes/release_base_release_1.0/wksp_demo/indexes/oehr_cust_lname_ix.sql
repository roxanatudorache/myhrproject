-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388924 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_cust_lname_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_cust_lname_ix.sql:null:65f80d659a9040df81aab57ce5cd81d392214353:create

create index oehr_cust_lname_ix on
    oehr_customers (
        cust_last_name
    );

