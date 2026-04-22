-- liquibase formatted sql
-- changeset wksp_demo:1776848388877 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/comments/oehr_regions.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_regions.sql:null:7a50fefecac175b0d10c7c732cffa43937f90be9:create

comment on table oehr_regions is
    'Regions table that contains region numbers and names. Contains 4 rows references with the oehr_Countries table.';

comment on column oehr_regions.region_id is
    'Primary key of oehr_regions table.';

comment on column oehr_regions.region_name is
    'Names of regions. Locations are in the countries of these regions.';

