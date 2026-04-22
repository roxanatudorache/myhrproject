-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848388943 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_dept_location_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_dept_location_ix.sql:null:b1cecc634213c1e596ebcd00bc483d0b939e72e6:create

create index oehr_dept_location_ix on
    oehr_departments (
        location_id
    );

