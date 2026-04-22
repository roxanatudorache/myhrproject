create index oehr_cust_account_manager_ix on
    oehr_customers (
        account_mgr_id
    );


-- sqlcl_snapshot {"hash":"316cddaa9eb9d004fe0eeb07053fec4bad512c55","type":"INDEX","name":"OEHR_CUST_ACCOUNT_MANAGER_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_CUST_ACCOUNT_MANAGER_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_CUSTOMERS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>ACCOUNT_MGR_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}