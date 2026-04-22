alter table oehr_departments
    add constraint oehr_dept_mgr_fk
        foreign key ( manager_id )
            references oehr_employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"94be68a010c688235962feb123b68a71920a001a","type":"REF_CONSTRAINT","name":"OEHR_DEPT_MGR_FK","schemaName":"WKSP_DEMO","sxml":""}