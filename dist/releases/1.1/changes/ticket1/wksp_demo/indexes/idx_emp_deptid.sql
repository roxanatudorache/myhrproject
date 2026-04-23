-- liquibase formatted sql
-- changeset WKSP_DEMO:1776949359630 stripComments:false  logicalFilePath:ticket1/wksp_demo/indexes/idx_emp_deptid.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/idx_emp_deptid.sql:null:4514a024d7d8131c1d65ffe0e325a2dc184e1a41:create

create index idx_emp_deptid on
    emp (
        dep_id
    );

