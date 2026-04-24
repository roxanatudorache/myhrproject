-- liquibase formatted sql
-- changeset WKSP_DEMO:1777020301549 stripComments:false  logicalFilePath:release_tstscript_1.3/wksp_demo/tables/dept.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/dept.sql:087d3bdec507830daeeca99b6c8187116aa09a56:b3a3c0909fe876eb8ce7eaab4caf5dcf8947dac8:alter

alter table dept add (
    testdev number
)
/

