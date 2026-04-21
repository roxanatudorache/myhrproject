-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548609 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/ref_constraints/oehr_countr_reg_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_countr_reg_fk.sql:null:fe8e023afa0cb0c99c6337e4474c93dee636eb55:create

alter table oehr_countries
    add constraint oehr_countr_reg_fk
        foreign key ( region_id )
            references oehr_regions ( region_id )
        enable;

