-- liquibase formatted sql
-- changeset WKSP_DEMO:1777021206274 stripComments:false  logicalFilePath:release_tstscript_1.4/wksp_demo/tables/emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/emp.sql:052e9460da052df22006a5aaa81d2a8990ae9bfb:8c269bdaef74c9d1c4b182ba125f29f1caf82b13:alter

-- Uncomment drop statement after ensuring it is performing the correct actions
ALTER TABLE "EMP" DROP ("JOB")
/


