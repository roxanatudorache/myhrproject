alter table oehr_order_items
    add constraint oehr_order_items_product_id_fk
        foreign key ( product_id )
            references oehr_product_information ( product_id )
        enable;


-- sqlcl_snapshot {"hash":"32feb9e052b534f1376c3c38c589a95cb87beacb","type":"REF_CONSTRAINT","name":"OEHR_ORDER_ITEMS_PRODUCT_ID_FK","schemaName":"WKSP_DEMO","sxml":""}