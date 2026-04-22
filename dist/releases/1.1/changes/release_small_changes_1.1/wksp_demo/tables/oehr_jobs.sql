-- liquibase formatted sql
-- changeset WKSP_DEMO:1776850400041 stripComments:false  logicalFilePath:release_small_changes_1.1/wksp_demo/tables/oehr_jobs.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/oehr_jobs.sql:28a096390dab4f30bee04077d771551c69a9e7a8:cd16413791f5800c6342bf60f080b2fc76f006ce:alter

alter table oehr_jobs add (
    description varchar2(1000)
)
/

