alter table oehr_job_history
    add constraint oehr_jhist_emp_fk
        foreign key ( employee_id )
            references oehr_employees ( employee_id )
        enable;


-- sqlcl_snapshot {"hash":"3f0f6a1461772ce21c2537109c288511a77625ea","type":"REF_CONSTRAINT","name":"OEHR_JHIST_EMP_FK","schemaName":"WKSP_DEMO","sxml":""}