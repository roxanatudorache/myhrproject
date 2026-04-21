-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548404 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_cust_upper_name_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_cust_upper_name_ix.sql:null:65543f6e710a01f029d2f58efd9b379854fdf15c:create

create index oehr_cust_upper_name_ix on
    oehr_customers ( upper(cust_last_name),
    upper(cust_first_name) );

