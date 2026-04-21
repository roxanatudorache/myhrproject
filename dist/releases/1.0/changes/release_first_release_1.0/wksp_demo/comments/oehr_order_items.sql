-- liquibase formatted sql
-- changeset wksp_demo:1776783548332 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/comments/oehr_order_items.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_order_items.sql:null:973f1031100770c81d64baf8626cf01222bbb524:create

comment on table oehr_order_items is
    'Example of many-to-many resolution.';

comment on column oehr_order_items.line_item_id is
    'Part of concatenated primary key.';

comment on column oehr_order_items.order_id is
    'Part of concatenated primary key, references orders.order_id.';

comment on column oehr_order_items.product_id is
    'References oehr_product_information.product_id.';

