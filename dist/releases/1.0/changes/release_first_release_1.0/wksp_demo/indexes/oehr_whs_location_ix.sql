-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548588 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_whs_location_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_whs_location_ix.sql:null:fbfd2245b178f8b0444f29802d2087b24521ab95:create

create index oehr_whs_location_ix on
    oehr_warehouses (
        location_id
    );

