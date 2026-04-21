create index oehr_prod_desc_prod_ix on
    oehr_product_descriptions (
        product_id
    );


-- sqlcl_snapshot {"hash":"6c5cb82dbc6eec163c3a40ae8fd8e5a9e42abb93","type":"INDEX","name":"OEHR_PROD_DESC_PROD_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_PROD_DESC_PROD_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_PRODUCT_DESCRIPTIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PRODUCT_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}