-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783548472 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/indexes/oehr_item_order_ix.sql
-- sqlcl_snapshot src/database/wksp_demo/indexes/oehr_item_order_ix.sql:null:a6cb8fb5b08c3e916a329e50251c4fffa97ea610:create

create index oehr_item_order_ix on
    oehr_order_items (
        order_id
    );

