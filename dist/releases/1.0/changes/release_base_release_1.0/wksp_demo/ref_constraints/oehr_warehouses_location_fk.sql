-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389284 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_warehouses_location_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_warehouses_location_fk.sql:null:c29834e2738047481274811452688d50f1d2b7ab:create

alter table oehr_warehouses
    add constraint oehr_warehouses_location_fk
        foreign key ( location_id )
            references oehr_locations ( location_id )
                on delete set null
        enable;

