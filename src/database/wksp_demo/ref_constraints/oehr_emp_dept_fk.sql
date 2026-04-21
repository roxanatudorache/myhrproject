alter table oehr_employees
    add constraint oehr_emp_dept_fk
        foreign key ( department_id )
            references oehr_departments ( department_id )
        enable;


-- sqlcl_snapshot {"hash":"f596e0b8929182f4df548cde31e9567b430323ef","type":"REF_CONSTRAINT","name":"OEHR_EMP_DEPT_FK","schemaName":"WKSP_DEMO","sxml":""}