-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389260 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_orders_customer_id_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_orders_customer_id_fk.sql:null:3aa37c879cd028617a7229277fcaafb8302e024a:create

alter table oehr_orders
    add constraint oehr_orders_customer_id_fk
        foreign key ( customer_id )
            references oehr_customers ( customer_id )
                on delete set null
        enable;

