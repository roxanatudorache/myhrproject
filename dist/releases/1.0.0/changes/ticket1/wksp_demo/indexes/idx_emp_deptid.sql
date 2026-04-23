-- liquibase formatted sql
-- changeset WKSP_DEMO:1776927867523 stripComments:false  logicalFilePath:ticket1/wksp_demo/indexes/idx_emp_deptid.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/idx_emp_deptid.sql:null:7281b9010f51dff6c8970ff15703274cd43106c5:create

create index wksp_demo.idx_emp_deptid on
    wksp_demo.emp (
        dep_id
    );

