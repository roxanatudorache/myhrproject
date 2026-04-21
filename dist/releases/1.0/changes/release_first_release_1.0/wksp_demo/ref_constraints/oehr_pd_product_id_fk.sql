-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548762 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/ref_constraints/oehr_pd_product_id_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_pd_product_id_fk.sql:null:e98c619c52495727659021574dbc3f11495222bc:create

alter table oehr_product_descriptions
    add constraint oehr_pd_product_id_fk
        foreign key ( product_id )
            references oehr_product_information ( product_id )
        enable;

