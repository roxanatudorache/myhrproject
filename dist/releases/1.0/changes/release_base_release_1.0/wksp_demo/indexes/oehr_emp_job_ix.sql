-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388967 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_emp_job_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_emp_job_ix.sql:null:00fd7b11c45cd3c3f333e75a1a68566468d3f121:create

create index oehr_emp_job_ix on
    oehr_employees (
        job_id
    );

