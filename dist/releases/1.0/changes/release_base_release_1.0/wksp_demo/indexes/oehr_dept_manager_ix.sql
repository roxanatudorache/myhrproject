-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388950 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_dept_manager_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_dept_manager_ix.sql:null:6e89df27c550daa4f8c87d0cfa68095fc77d0d2b:create

create index oehr_dept_manager_ix on
    oehr_departments (
        manager_id
    );

