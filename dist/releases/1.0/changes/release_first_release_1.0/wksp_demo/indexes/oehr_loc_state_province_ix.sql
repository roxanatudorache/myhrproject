-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548528 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_loc_state_province_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_loc_state_province_ix.sql:null:b331e8b11d1b10b09ed47fa1b402ae45d5ae8dc4:create

create index oehr_loc_state_province_ix on
    oehr_locations (
        state_province
    );

