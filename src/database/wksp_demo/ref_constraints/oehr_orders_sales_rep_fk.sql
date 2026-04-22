alter table oehr_orders
    add constraint oehr_orders_sales_rep_fk
        foreign key ( sales_rep_id )
            references oehr_employees ( employee_id )
                on delete set null
        enable;


-- sqlcl_snapshot {"hash":"d790ca2986133e21f3ac2950cc67993de3ebac11","type":"REF_CONSTRAINT","name":"OEHR_ORDERS_SALES_REP_FK","schemaName":"WKSP_DEMO","sxml":""}