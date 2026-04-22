alter table oehr_customers
    add constraint oehr_cust_acct_mgr_fk
        foreign key ( account_mgr_id )
            references oehr_employees ( employee_id )
                on delete set null
        enable;


-- sqlcl_snapshot {"hash":"01475e1ad543367dcea446a947980815d1e10c81","type":"REF_CONSTRAINT","name":"OEHR_CUST_ACCT_MGR_FK","schemaName":"WKSP_DEMO","sxml":""}