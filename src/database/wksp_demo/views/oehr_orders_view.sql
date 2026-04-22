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


-- sqlcl_snapshot {"hash":"8250fd062203f37da427fde38b53b49e79d33d6e","type":"VIEW","name":"OEHR_ORDERS_VIEW","schemaName":"WKSP_DEMO","sxml":""}