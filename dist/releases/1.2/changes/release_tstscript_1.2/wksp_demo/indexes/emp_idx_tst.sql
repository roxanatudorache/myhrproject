-- liquibase formatted sql
-- changeset WKSP_DEMO:1777017505852 stripComments:false  logicalFilePath:release_tstscript_1.2/wksp_demo/indexes/emp_idx_tst.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/emp_idx_tst.sql:null:c091af41439c92cfa5a6b27084b058965d784a3d:create

create index emp_idx_tst on
    emp (
        email
    );

