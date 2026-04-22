-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389203 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_inventories_warehouses_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_inventories_warehouses_fk.sql:null:8d853f156fbacaee28ebf305ebe5361339591a69:create

alter table oehr_inventories
    add constraint oehr_inventories_warehouses_fk
        foreign key ( warehouse_id )
            references oehr_warehouses ( warehouse_id )
        enable;

