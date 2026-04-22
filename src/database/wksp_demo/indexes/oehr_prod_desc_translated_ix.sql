create index oehr_prod_desc_translated_ix on
    oehr_product_descriptions (
        translated_name
    );


-- sqlcl_snapshot {"hash":"e406603b4cea87de989596c9949f736b91813d7b","type":"INDEX","name":"OEHR_PROD_DESC_TRANSLATED_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_PROD_DESC_TRANSLATED_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_PRODUCT_DESCRIPTIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>TRANSLATED_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}