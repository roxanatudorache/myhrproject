-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548376 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_country_region_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_country_region_ix.sql:null:f8bf768a2b68dee09728b33bf8025357d581fe78:create

create index oehr_country_region_ix on
    oehr_countries (
        region_id
    );

