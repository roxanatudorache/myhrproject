create index oehr_jhist_employee_ix on
    oehr_job_history (
        employee_id
    );


-- sqlcl_snapshot {"hash":"5f7f37a484d5ded75a159dd2a5ab753cdf163c3d","type":"INDEX","name":"OEHR_JHIST_EMPLOYEE_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_JHIST_EMPLOYEE_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_JOB_HISTORY</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>EMPLOYEE_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}