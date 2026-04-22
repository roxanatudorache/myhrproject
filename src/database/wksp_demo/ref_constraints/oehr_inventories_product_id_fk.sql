alter table oehr_inventories
    add constraint oehr_inventories_product_id_fk
        foreign key ( product_id )
            references oehr_product_information ( product_id )
        enable;


-- sqlcl_snapshot {"hash":"daf2553803f551d657ee71a4f1464dba865a0615","type":"REF_CONSTRAINT","name":"OEHR_INVENTORIES_PRODUCT_ID_FK","schemaName":"WKSP_DEMO","sxml":""}