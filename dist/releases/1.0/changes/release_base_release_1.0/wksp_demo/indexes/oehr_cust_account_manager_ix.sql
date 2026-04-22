-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388910 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_cust_account_manager_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_cust_account_manager_ix.sql:null:316cddaa9eb9d004fe0eeb07053fec4bad512c55:create

create index oehr_cust_account_manager_ix on
    oehr_customers (
        account_mgr_id
    );

