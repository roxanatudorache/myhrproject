-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389236 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_loc_c_id_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_loc_c_id_fk.sql:null:13a06bc1b6e0742fd80dabfec164efb22e9cfb71:create

alter table oehr_locations
    add constraint oehr_loc_c_id_fk
        foreign key ( country_id )
            references oehr_countries ( country_id )
        enable;

