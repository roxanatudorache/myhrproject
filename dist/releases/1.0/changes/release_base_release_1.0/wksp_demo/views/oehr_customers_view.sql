-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389674 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/views/oehr_customers_view.sql
-- sqlcl_snapshot src/database/wksp_demo/views/oehr_customers_view.sql:null:259eb058de04dc0e23abc07b5ed07d36e0637dc9:create

create or replace force editionable view oehr_customers_view (
    customer_id,
    cust_first_name,
    cust_last_name,
    street_address,
    postal_code,
    city,
    state_province,
    country_id,
    country_name,
    region_id,
    nls_language,
    nls_territory,
    credit_limit,
    cust_email,
    phone_number,
    account_mgr_id
) as
    select
        c.customer_id,
        c.cust_first_name,
        c.cust_last_name,
        c.street_address,
        c.postal_code,
        c.city,
        c.state_province,
        co.country_id,
        co.country_name,
        co.region_id,
        c.nls_language,
        c.nls_territory,
        c.credit_limit,
        c.cust_email,
        c.phone_number,
        c.account_mgr_id
    from
        oehr_countries co,
        oehr_customers c
    where
        c.country_id = co.country_id (+);

