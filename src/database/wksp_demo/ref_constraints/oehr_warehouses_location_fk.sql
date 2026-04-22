alter table oehr_warehouses
    add constraint oehr_warehouses_location_fk
        foreign key ( location_id )
            references oehr_locations ( location_id )
                on delete set null
        enable;


-- sqlcl_snapshot {"hash":"c29834e2738047481274811452688d50f1d2b7ab","type":"REF_CONSTRAINT","name":"OEHR_WAREHOUSES_LOCATION_FK","schemaName":"WKSP_DEMO","sxml":""}