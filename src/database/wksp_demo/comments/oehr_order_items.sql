comment on table oehr_order_items is
    'Example of many-to-many resolution.';

comment on column oehr_order_items.line_item_id is
    'Part of concatenated primary key.';

comment on column oehr_order_items.order_id is
    'Part of concatenated primary key, references orders.order_id.';

comment on column oehr_order_items.product_id is
    'References oehr_product_information.product_id.';


-- sqlcl_snapshot {"hash":"973f1031100770c81d64baf8626cf01222bbb524","type":"COMMENT","name":"oehr_order_items","schemaName":"wksp_demo","sxml":""}