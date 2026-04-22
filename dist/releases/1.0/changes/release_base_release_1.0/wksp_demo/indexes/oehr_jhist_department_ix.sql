-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389018 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_jhist_department_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_jhist_department_ix.sql:null:e5a7e911f185bc3ceb6e9d81f5081fe668b73e22:create

create index oehr_jhist_department_ix on
    oehr_job_history (
        department_id
    );

