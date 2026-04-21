-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548466 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_inventory_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_inventory_ix.sql:null:d47dffa32cc2cefa6e92fb607cc9b5b6faeeda29:create

create index oehr_inventory_ix on
    oehr_inventories (
        warehouse_id,
        product_id
    );

