-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389704 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/views/oehr_orders_view.sql
-- sqlcl_snapshot src/database/wksp_demo/views/oehr_orders_view.sql:null:8250fd062203f37da427fde38b53b49e79d33d6e:create

create or replace force editionable view oehr_orders_view (
    order_id,
    order_date,
    order_mode,
    customer_id,
    order_status,
    order_total,
    sales_rep_id,
    promotion_id
) as
    select
        order_id,
        to_date(to_char(order_date, 'DD-MON-YY HH:MI:SS'),
                'DD-MON-YY HH:MI:SS') order_date,
        order_mode,
        customer_id,
        order_status,
        order_total,
        sales_rep_id,
        promotion_id
    from
        oehr_orders;

