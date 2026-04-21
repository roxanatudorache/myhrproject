alter table oehr_countries
    add constraint oehr_countr_reg_fk
        foreign key ( region_id )
            references oehr_regions ( region_id )
        enable;


-- sqlcl_snapshot {"hash":"fe8e023afa0cb0c99c6337e4474c93dee636eb55","type":"REF_CONSTRAINT","name":"OEHR_COUNTR_REG_FK","schemaName":"WKSP_DEMO","sxml":""}