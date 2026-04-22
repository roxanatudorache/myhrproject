-- liquibase formatted sql
-- changeset wksp_demo:1776848388862 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/comments/oehr_product_descriptions.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_product_descriptions.sql:null:5378dd3c1284470b15ed450c66ce3b5ce6796d8a:create

comment on table oehr_product_descriptions is
    'Non-industry-specific design, allows selection of NLS-setting-specific data derived at runtime, for example using the products view.'
    ;

comment on column oehr_product_descriptions.language_id is
    'Primary key column.';

comment on column oehr_product_descriptions.product_id is
    'Primary key column.';

