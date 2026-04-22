-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388976 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_emp_manager_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_emp_manager_ix.sql:null:11cf3312e55370c9eec5a7ce252b3d1aba5ab2fb:create

create index oehr_emp_manager_ix on
    oehr_employees (
        manager_id
    );

