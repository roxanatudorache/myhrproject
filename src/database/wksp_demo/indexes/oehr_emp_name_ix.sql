create index oehr_emp_name_ix on
    oehr_employees (
        last_name,
        first_name
    );


-- sqlcl_snapshot {"hash":"46fc77ab8dfed25004ae49a4e359f0b037a2b3e0","type":"INDEX","name":"OEHR_EMP_NAME_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_EMP_NAME_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_EMPLOYEES</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>LAST_NAME</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>FIRST_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}