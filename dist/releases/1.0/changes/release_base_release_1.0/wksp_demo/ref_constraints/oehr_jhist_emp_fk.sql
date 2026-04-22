-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389220 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_jhist_emp_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_jhist_emp_fk.sql:null:3f0f6a1461772ce21c2537109c288511a77625ea:create

alter table oehr_job_history
    add constraint oehr_jhist_emp_fk
        foreign key ( employee_id )
            references oehr_employees ( employee_id )
        enable;

