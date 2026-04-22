-- liquibase formatted sql
-- changeset wksp_demo:1776848388885 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/comments/oehr_warehouses.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_warehouses.sql:null:d8e9306c22fed158071eb2b2848e80e59617c739:create

comment on table oehr_warehouses is
    'Warehouse data unspecific to any industry.';

comment on column oehr_warehouses.location_id is
    'Primary key column, references oehr_locations.location_id.';

comment on column oehr_warehouses.warehouse_id is
    'Primary key column.';

