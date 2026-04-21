create index oehr_prod_supplier_ix on
    oehr_product_information (
        supplier_id
    );


-- sqlcl_snapshot {"hash":"eb98a7c9f42c6bf12c4e601c9da844a9f84859fa","type":"INDEX","name":"OEHR_PROD_SUPPLIER_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_PROD_SUPPLIER_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_PRODUCT_INFORMATION</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SUPPLIER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}