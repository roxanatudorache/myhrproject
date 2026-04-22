alter table oehr_departments
    add constraint oehr_dept_loc_fk
        foreign key ( location_id )
            references oehr_locations ( location_id )
        enable;


-- sqlcl_snapshot {"hash":"36d05b042e4d21431b82b5e43e1b9f21c4beff95","type":"REF_CONSTRAINT","name":"OEHR_DEPT_LOC_FK","schemaName":"WKSP_DEMO","sxml":""}