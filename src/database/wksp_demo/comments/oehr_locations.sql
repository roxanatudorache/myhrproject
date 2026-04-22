comment on table oehr_locations is
    'Locations table that contains specific address of a specific office,
warehouse, and/or production site of a company. Does not store addresses /
locations of customers. Contains 23 rows references with the
oehr_departments and oehr_countries tables. ';

comment on column oehr_locations.city is
    'A not null column that shows city where an office, warehouse, or production site of a company is located. ';

comment on column oehr_locations.country_id is
    'Country where an office, warehouse, or production site of a company is located. Foreign key to country_id column of the oehr_countries table.'
    ;

comment on column oehr_locations.location_id is
    'Primary key of oehr_locations table';

comment on column oehr_locations.postal_code is
    'Postal code of the location of an office, warehouse, or production site of a company. ';

comment on column oehr_locations.state_province is
    'State or Province where an office, warehouse, or production site of a company is located.';

comment on column oehr_locations.street_address is
    'Street address of an office, warehouse, or production site of a company. Contains building number and street name';


-- sqlcl_snapshot {"hash":"76544d1f9e9e509beb4f9ff3f087570d37c5477b","type":"COMMENT","name":"oehr_locations","schemaName":"wksp_demo","sxml":""}