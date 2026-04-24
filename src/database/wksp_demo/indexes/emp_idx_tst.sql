create index emp_idx_tst on
    emp (
        email
    );


-- sqlcl_snapshot {"hash":"c091af41439c92cfa5a6b27084b058965d784a3d","type":"INDEX","name":"EMP_IDX_TST","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>EMP_IDX_TST</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>EMP</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMAIL</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}