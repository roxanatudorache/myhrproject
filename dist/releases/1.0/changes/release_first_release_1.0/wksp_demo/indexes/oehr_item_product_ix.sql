-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548480 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_item_product_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_item_product_ix.sql:null:94c75f648aebd9f0c3f34c51e548b32a771fe9b2:create

create index oehr_item_product_ix on
    oehr_order_items (
        product_id
    );

