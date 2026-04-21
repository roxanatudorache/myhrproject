-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548494 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_jhist_employee_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_jhist_employee_ix.sql:null:5f7f37a484d5ded75a159dd2a5ab753cdf163c3d:create

create index oehr_jhist_employee_ix on
    oehr_job_history (
        employee_id
    );

