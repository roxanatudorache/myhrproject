-- liquibase formatted sql
-- changeset wksp_demo:1776783548340 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/comments/oehr_orders.sql
-- sqlcl_snapshot src/database/wksp_demo/comments/oehr_orders.sql:null:29ef9f6f40699a7a07dd09c09883fae047efab65:create

comment on table oehr_orders is
    'Contains orders entered by a salesperson as well as over the Web.';

comment on column oehr_orders.order_date is
    'TIMESTAMP WITH TIME ZONE column, NOT NULL constraint.';

comment on column oehr_orders.order_id is
    'PRIMARY KEY column.';

comment on column oehr_orders.order_mode is
    'CHECK constraint.';

comment on column oehr_orders.order_status is
    '0: Not fully entered, 1: Entered, 2: Canceled - bad credit, -
3: Canceled - by customer, 4: Shipped - whole order, -
5: Shipped - replacement items, 6: Shipped - backlog on items, -
7: Shipped - special delivery, 8: Shipped - billed, 9: Shipped - payment plan,-
10: Shipped - paid';

comment on column oehr_orders.order_total is
    'CHECK constraint.';

comment on column oehr_orders.promotion_id is
    'Sales promotion ID. Used in SH schema';

comment on column oehr_orders.sales_rep_id is
    'References oehr_employees.employee_id.';

