comment on table oehr_product_information is
    'Non-industry-specific data in various categories.';

comment on column oehr_product_information.category_id is
    'Low cardinality column, can be used for bitmap index. Schema SH uses it as foreign key';

comment on column oehr_product_information.product_description is
    'Primary language description corresponding to translated_description in
oehr_product_descriptions, added to provide non-NLS text columns for OC views to access.';

comment on column oehr_product_information.product_id is
    'Primary key column.';

comment on column oehr_product_information.product_status is
    'Check constraint. Appropriate for complex rules, such as "All products in 
status PRODUCTION must have at least one inventory entry." Also appropriate 
for a trigger auditing status change.';

comment on column oehr_product_information.supplier_id is
    'Offers possibility of extensions outside Common Schema.';

comment on column oehr_product_information.warranty_period is
    'INTERVAL YEAER TO MONTH column, low cardinality, can be used for bitmap index.';

comment on column oehr_product_information.weight_class is
    'Low cardinality column, can be used for bitmap index.';


-- sqlcl_snapshot {"hash":"e8fe5027a2e7c40a09d7f1434a13f9c5531e1294","type":"COMMENT","name":"oehr_product_information","schemaName":"wksp_demo","sxml":""}