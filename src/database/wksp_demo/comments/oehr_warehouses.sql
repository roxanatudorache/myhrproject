comment on table oehr_warehouses is
    'Warehouse data unspecific to any industry.';

comment on column oehr_warehouses.location_id is
    'Primary key column, references oehr_locations.location_id.';

comment on column oehr_warehouses.warehouse_id is
    'Primary key column.';


-- sqlcl_snapshot {"hash":"d8e9306c22fed158071eb2b2848e80e59617c739","type":"COMMENT","name":"oehr_warehouses","schemaName":"wksp_demo","sxml":""}