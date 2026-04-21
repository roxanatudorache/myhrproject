-- liquibase formatted sql
-- changeset wksp_demo:1776783548265 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/comments/oehr_countries.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_countries.sql:null:1e699fdb179a158e3e150501417361869a73b4f6:create

comment on table oehr_countries is
    'oehr_country table. Contains 25 rows. References with oehr_locations table.';

comment on column oehr_countries.country_id is
    'Primary key of oehr_countries table.';

comment on column oehr_countries.region_id is
    'Region ID for the country. Foreign key to region_id column in the oehr_departments table.';

