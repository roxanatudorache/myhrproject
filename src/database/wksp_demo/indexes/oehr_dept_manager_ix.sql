create index oehr_dept_manager_ix on
    oehr_departments (
        manager_id
    );


-- sqlcl_snapshot {"hash":"6e89df27c550daa4f8c87d0cfa68095fc77d0d2b","type":"INDEX","name":"OEHR_DEPT_MANAGER_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_DEPT_MANAGER_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_DEPARTMENTS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>MANAGER_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}