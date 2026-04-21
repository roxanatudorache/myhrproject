alter table oehr_order_items
    add constraint oehr_order_items_order_id_fk
        foreign key ( order_id )
            references oehr_orders ( order_id )
                on delete cascade
        enable;


-- sqlcl_snapshot {"hash":"bf096291db05c0b05bfa03dccdb35f15cb77dfed","type":"REF_CONSTRAINT","name":"OEHR_ORDER_ITEMS_ORDER_ID_FK","schemaName":"WKSP_DEMO","sxml":""}