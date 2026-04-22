-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389034 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_jhist_job_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_jhist_job_ix.sql:null:3e43d99918d34023a97481e02c2d13557139d556:create

create index oehr_jhist_job_ix on
    oehr_job_history (
        job_id
    );

