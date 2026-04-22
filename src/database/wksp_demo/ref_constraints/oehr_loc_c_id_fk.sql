alter table oehr_locations
    add constraint oehr_loc_c_id_fk
        foreign key ( country_id )
            references oehr_countries ( country_id )
        enable;


-- sqlcl_snapshot {"hash":"13a06bc1b6e0742fd80dabfec164efb22e9cfb71","type":"REF_CONSTRAINT","name":"OEHR_LOC_C_ID_FK","schemaName":"WKSP_DEMO","sxml":""}