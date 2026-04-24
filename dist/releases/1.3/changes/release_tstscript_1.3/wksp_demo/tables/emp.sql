-- liquibase formatted sql
-- changeset WKSP_DEMO:1777020301671 stripComments:false  logicalFilePath:release_tstscript_1.3/wksp_demo/tables/emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/emp.sql:5cfcbeb1701a4a8c21b24f7b3fbc0f4e7011fa35:96b391727fcce05a3adfaa66eaf53dec162af6f7:alter

alter table emp add (
    job varchar2(100)
)
/

