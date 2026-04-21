-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548664 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/ref_constraints/oehr_emp_manager_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_emp_manager_fk.sql:null:ff03034adcd29223c7083b7b5f8d4fe2f2627195:create

alter table oehr_employees
    add constraint oehr_emp_manager_fk
        foreign key ( manager_id )
            references oehr_employees ( employee_id )
        enable;

