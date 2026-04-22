-- liquibase formatted sql
-- changeset wksp_demo:1776848388795 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/comments/oehr_customers.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_customers.sql:null:60a47f0fae66757108e0344384c0adcb72ff6697:create

comment on table oehr_customers is
    'Contains customers data either entered by an employee or by the customer him/herself over the Web.';

comment on column oehr_customers.account_mgr_id is
    'References oehr_employees.employee_id.';

comment on column oehr_customers.city is
    'Modified column to maintain customer city.';

comment on column oehr_customers.country_id is
    'Modified column to maintain customer country id.';

comment on column oehr_customers.credit_limit is
    'Check constraint.';

comment on column oehr_customers.customer_id is
    'Primary key column.';

comment on column oehr_customers.cust_first_name is
    'NOT NULL constraint.';

comment on column oehr_customers.cust_last_name is
    'NOT NULL constraint.';

comment on column oehr_customers.phone_number is
    'Modified column to maintain customer phone number.';

comment on column oehr_customers.postal_code is
    'Modified column to maintain customer postal code.';

comment on column oehr_customers.state_province is
    'Modified column to maintain customer state or province.';

comment on column oehr_customers.street_address is
    'Modified column to maintain customer street address.';

