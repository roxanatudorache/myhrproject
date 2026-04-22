alter table oehr_job_history
    add constraint oehr_jhist_job_fk
        foreign key ( job_id )
            references oehr_jobs ( job_id )
        enable;


-- sqlcl_snapshot {"hash":"45d02f25ecb10a9ab3356dba183fe2680034e663","type":"REF_CONSTRAINT","name":"OEHR_JHIST_JOB_FK","schemaName":"WKSP_DEMO","sxml":""}