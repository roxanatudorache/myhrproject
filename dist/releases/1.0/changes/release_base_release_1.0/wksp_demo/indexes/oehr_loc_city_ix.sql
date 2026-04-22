-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389042 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/indexes/oehr_loc_city_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_loc_city_ix.sql:null:2a6657fac6c4b02a665313ba68d430c186d619c4:create

create index oehr_loc_city_ix on
    oehr_locations (
        city
    );

