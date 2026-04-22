create index oehr_jhist_job_ix on
    oehr_job_history (
        job_id
    );


-- sqlcl_snapshot {"hash":"3e43d99918d34023a97481e02c2d13557139d556","type":"INDEX","name":"OEHR_JHIST_JOB_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_JHIST_JOB_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_JOB_HISTORY</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>JOB_ID</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}