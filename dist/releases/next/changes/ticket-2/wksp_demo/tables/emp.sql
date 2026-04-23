-- liquibase formatted sql
-- changeset WKSP_DEMO:1776932667381 stripComments:false  logicalFilePath:ticket-2/wksp_demo/tables/emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/emp.sql:5cfcbeb1701a4a8c21b24f7b3fbc0f4e7011fa35:79f77e8efbba6c377c3cc67737126f8053d4b283:alter

alter table emp add (
    job varchar2(50)
)
/

