comment on table oehr_regions is
    'Regions table that contains region numbers and names. Contains 4 rows references with the oehr_Countries table.';

comment on column oehr_regions.region_id is
    'Primary key of oehr_regions table.';

comment on column oehr_regions.region_name is
    'Names of regions. Locations are in the countries of these regions.';


-- sqlcl_snapshot {"hash":"7a50fefecac175b0d10c7c732cffa43937f90be9","type":"COMMENT","name":"oehr_regions","schemaName":"wksp_demo","sxml":""}