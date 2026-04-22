-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389228 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_jhist_job_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_jhist_job_fk.sql:null:45d02f25ecb10a9ab3356dba183fe2680034e663:create

alter table oehr_job_history
    add constraint oehr_jhist_job_fk
        foreign key ( job_id )
            references oehr_jobs ( job_id )
        enable;

