create index oehr_loc_state_province_ix on
    oehr_locations (
        state_province
    );


-- sqlcl_snapshot {"hash":"b331e8b11d1b10b09ed47fa1b402ae45d5ae8dc4","type":"INDEX","name":"OEHR_LOC_STATE_PROVINCE_IX","schemaName":"WKSP_DEMO","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_LOC_STATE_PROVINCE_IX</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>WKSP_DEMO</SCHEMA>\n         <NAME>OEHR_LOCATIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>STATE_PROVINCE</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}