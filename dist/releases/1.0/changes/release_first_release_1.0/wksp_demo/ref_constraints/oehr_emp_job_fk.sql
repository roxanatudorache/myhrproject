-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548653 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/ref_constraints/oehr_emp_job_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_emp_job_fk.sql:null:5804b0a2e47efc5a96813e2085e8cb4f4045dd7c:create

alter table oehr_employees
    add constraint oehr_emp_job_fk
        foreign key ( job_id )
            references oehr_jobs ( job_id )
        enable;

