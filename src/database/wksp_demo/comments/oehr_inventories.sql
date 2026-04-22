comment on table oehr_inventories is
    'Tracks availability of products by product_it and warehouse_id.';

comment on column oehr_inventories.product_id is
    'Part of concatenated primary key, references oehr_product_information.product_id.';

comment on column oehr_inventories.warehouse_id is
    'Part of concatenated primary key, references oehr_warehouses.warehouse_id.';


-- sqlcl_snapshot {"hash":"62145643c822817aae53da76ad8efd57ad03d494","type":"COMMENT","name":"oehr_inventories","schemaName":"wksp_demo","sxml":""}