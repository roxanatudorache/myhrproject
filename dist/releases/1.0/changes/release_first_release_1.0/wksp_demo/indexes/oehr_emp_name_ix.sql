-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548450 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_emp_name_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_emp_name_ix.sql:null:46fc77ab8dfed25004ae49a4e359f0b037a2b3e0:create

create index oehr_emp_name_ix on
    oehr_employees (
        last_name,
        first_name
    );

