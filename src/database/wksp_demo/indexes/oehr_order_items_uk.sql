create unique index oehr_order_items_uk on
    oehr_order_items (
        order_id,
        product_id
    );


-- sqlcl_snapshot {"hash":"8799ab9ca7126c74d6f6fb87dff301ecc33ec598","type":"INDEX","name":"OEHR_ORDER_ITEMS_UK","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_ORDER_ITEMS_UK</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_ORDER_ITEMS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ORDER_ID</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>PRODUCT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}