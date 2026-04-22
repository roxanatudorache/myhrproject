create table oehr_inventories (
    product_id       number(6, 0),
    warehouse_id     number(3, 0)
        constraint oehr_inventory_warehouse_id_nn not null enable,
    quantity_on_hand number(8, 0)
        constraint oehr_inventory_qoh_nn not null enable
);

alter table oehr_inventories
    add constraint oehr_inventory_pk primary key ( product_id,
                                                   warehouse_id ) disable;


-- sqlcl_snapshot {"hash":"b97234590dc850ebf2df23ac4eeec3af067bcd00","type":"TABLE","name":"OEHR_INVENTORIES","schemaName":"WKSP_DEMO","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>WKSP_DEMO</SCHEMA>\n   <NAME>OEHR_INVENTORIES</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>PRODUCT_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>6</PRECISION>\n            <SCALE>0</SCALE>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>WAREHOUSE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>3</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL>\n               <NAME>OEHR_INVENTORY_WAREHOUSE_ID_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>QUANTITY_ON_HAND</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>8</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL>\n               <NAME>OEHR_INVENTORY_QOH_NN</NAME>\n            </NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>OEHR_INVENTORY_PK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>PRODUCT_ID</NAME>\n               </COL_LIST_ITEM>\n               <COL_LIST_ITEM>\n                  <NAME>WAREHOUSE_ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <DISABLE></DISABLE>\n            <NOVALIDATE></NOVALIDATE>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}