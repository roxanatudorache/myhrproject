-- liquibase formatted sql
-- changeset wksp_demo:1776783548304 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/comments/oehr_inventories.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_inventories.sql:null:62145643c822817aae53da76ad8efd57ad03d494:create

comment on table oehr_inventories is
    'Tracks availability of products by product_it and warehouse_id.';

comment on column oehr_inventories.product_id is
    'Part of concatenated primary key, references oehr_product_information.product_id.';

comment on column oehr_inventories.warehouse_id is
    'Part of concatenated primary key, references oehr_warehouses.warehouse_id.';

