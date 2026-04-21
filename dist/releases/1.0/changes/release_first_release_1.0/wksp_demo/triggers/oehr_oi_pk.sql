-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783549083 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/triggers/oehr_oi_pk.sql
-- sqlcl_snapshot src/database/wksp_demo/triggers/oehr_oi_pk.sql:null:15ada2456f2202fb44bdec8fbd66b6c43c6fe7b1:create

create or replace editionable trigger oehr_oi_pk before
    insert on oehr_order_items
    for each row
declare
    new_line number;
begin
    if :new.line_item_id is null then
        select
            ( nvl(
                max(line_item_id),
                0
            ) + 1 )
        into new_line
        from
            oehr_order_items
        where
            order_id = :new.order_id;

        :new.line_item_id := new_line;
    end if;
end;
/

alter trigger oehr_oi_pk enable;

