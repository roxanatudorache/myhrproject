alter table oehr_employees
    add constraint oehr_emp_manager_fk
        foreign key ( manager_id )
            references oehr_employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"ff03034adcd29223c7083b7b5f8d4fe2f2627195","type":"REF_CONSTRAINT","name":"OEHR_EMP_MANAGER_FK","schemaName":"WKSP_DEMO","sxml":""}