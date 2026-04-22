-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389268 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_orders_sales_rep_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_orders_sales_rep_fk.sql:null:d790ca2986133e21f3ac2950cc67993de3ebac11:create

alter table oehr_orders
    add constraint oehr_orders_sales_rep_fk
        foreign key ( sales_rep_id )
            references oehr_employees ( employee_id )
                on delete set null
        enable;

