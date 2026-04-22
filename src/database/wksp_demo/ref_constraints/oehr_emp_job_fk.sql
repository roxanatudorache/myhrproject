alter table oehr_employees
    add constraint oehr_emp_job_fk
        foreign key ( job_id )
            references oehr_jobs ( job_id )
        enable;


-- sqlcl_snapshot {"hash":"5804b0a2e47efc5a96813e2085e8cb4f4045dd7c","type":"REF_CONSTRAINT","name":"OEHR_EMP_JOB_FK","schemaName":"WKSP_DEMO","sxml":""}