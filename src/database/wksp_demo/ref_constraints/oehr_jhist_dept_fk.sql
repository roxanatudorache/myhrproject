alter table oehr_job_history
    add constraint oehr_jhist_dept_fk
        foreign key ( department_id )
            references oehr_departments ( department_id )
        enable;


-- sqlcl_snapshot {"hash":"1e769e3540effb29916d28c5fc75f566796d3d5f","type":"REF_CONSTRAINT","name":"OEHR_JHIST_DEPT_FK","schemaName":"WKSP_DEMO","sxml":""}