-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548689 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/ref_constraints/oehr_jhist_dept_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_jhist_dept_fk.sql:null:1e769e3540effb29916d28c5fc75f566796d3d5f:create

alter table oehr_job_history
    add constraint oehr_jhist_dept_fk
        foreign key ( department_id )
            references oehr_departments ( department_id )
        enable;

