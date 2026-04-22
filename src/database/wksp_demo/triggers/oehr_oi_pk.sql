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


-- sqlcl_snapshot {"hash":"9ef3cda2adcf912027b82f6094c7f3bf2b6fa2d7","type":"TRIGGER","name":"OEHR_OI_PK","schemaName":"WKSP_DEMO","sxml":""}