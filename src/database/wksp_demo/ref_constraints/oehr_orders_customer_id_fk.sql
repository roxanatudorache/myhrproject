alter table oehr_orders
    add constraint oehr_orders_customer_id_fk
        foreign key ( customer_id )
            references oehr_customers ( customer_id )
                on delete set null
        enable;


-- sqlcl_snapshot {"hash":"3aa37c879cd028617a7229277fcaafb8302e024a","type":"REF_CONSTRAINT","name":"OEHR_ORDERS_CUSTOMER_ID_FK","schemaName":"WKSP_DEMO","sxml":""}