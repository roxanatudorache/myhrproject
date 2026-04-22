-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389170 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_emp_dept_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_emp_dept_fk.sql:null:f596e0b8929182f4df548cde31e9567b430323ef:create

alter table oehr_employees
    add constraint oehr_emp_dept_fk
        foreign key ( department_id )
            references oehr_departments ( department_id )
        enable;

