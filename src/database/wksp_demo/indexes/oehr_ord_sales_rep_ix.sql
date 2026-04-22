create index oehr_ord_sales_rep_ix on
    oehr_orders (
        sales_rep_id
    );


-- sqlcl_snapshot {"hash":"ee4be17da5bc37f95cb1cb1c87e57f5be250718a","type":"INDEX","name":"OEHR_ORD_SALES_REP_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_ORD_SALES_REP_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_ORDERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>SALES_REP_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}