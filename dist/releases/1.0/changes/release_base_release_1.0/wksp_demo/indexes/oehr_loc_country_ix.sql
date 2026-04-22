-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389049 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_loc_country_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_loc_country_ix.sql:null:a838f98ac3ed3ceccd461d22ac252159c9d39b7e:create

create index oehr_loc_country_ix on
    oehr_locations (
        country_id
    );

