-- liquibase formatted sql
-- changeset WKSP_DEMO:1777021996034 stripComments:false  logicalFilePath:release_tstscript_1.5/wksp_demo/tables/dept.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/dept.sql:47efabc01913742785bc78042f65cea322c606a3:fd8176d298b9609fcc3faa5106018aad8bf0fdd8:alter

-- Uncomment drop statement after ensuring it is performing the correct actions
ALTER TABLE "DEPT" DROP ("TESTDEV")
/


