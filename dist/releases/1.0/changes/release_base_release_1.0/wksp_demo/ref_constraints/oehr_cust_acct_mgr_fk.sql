-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389144 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_cust_acct_mgr_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_cust_acct_mgr_fk.sql:null:01475e1ad543367dcea446a947980815d1e10c81:create

alter table oehr_customers
    add constraint oehr_cust_acct_mgr_fk
        foreign key ( account_mgr_id )
            references oehr_employees ( employee_id )
                on delete set null
        enable;

