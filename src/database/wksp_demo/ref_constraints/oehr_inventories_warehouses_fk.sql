alter table oehr_inventories
    add constraint oehr_inventories_warehouses_fk
        foreign key ( warehouse_id )
            references oehr_warehouses ( warehouse_id )
        enable;


-- sqlcl_snapshot {"hash":"8d853f156fbacaee28ebf305ebe5361339591a69","type":"REF_CONSTRAINT","name":"OEHR_INVENTORIES_WAREHOUSES_FK","schemaName":"WKSP_DEMO","sxml":""}