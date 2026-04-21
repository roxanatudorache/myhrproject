alter table oehr_product_descriptions
    add constraint oehr_pd_product_id_fk
        foreign key ( product_id )
            references oehr_product_information ( product_id )
        enable;


-- sqlcl_snapshot {"hash":"e98c619c52495727659021574dbc3f11495222bc","type":"REF_CONSTRAINT","name":"OEHR_PD_PRODUCT_ID_FK","schemaName":"WKSP_DEMO","sxml":""}