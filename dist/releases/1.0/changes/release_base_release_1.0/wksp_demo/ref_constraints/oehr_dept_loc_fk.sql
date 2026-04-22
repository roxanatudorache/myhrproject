-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389153 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_dept_loc_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_dept_loc_fk.sql:null:36d05b042e4d21431b82b5e43e1b9f21c4beff95:create

alter table oehr_departments
    add constraint oehr_dept_loc_fk
        foreign key ( location_id )
            references oehr_locations ( location_id )
        enable;

