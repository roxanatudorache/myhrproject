-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548425 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_emp_department_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_emp_department_ix.sql:null:485b185766fdbe459e6f0adc2734d777821f41dd:create

create index oehr_emp_department_ix on
    oehr_employees (
        department_id
    );

