create or replace force editionable view oehr_account_managers (
    acct_mgr,
    region,
    country,
    province,
    num_customers
) as
    select
        c.account_mgr_id acct_mgr,
        cr.region_id     region,
        c.country_id     country,
        c.state_province province,
        count(*)         num_customers
    from
        oehr_customers c,
        oehr_countries cr
    where
        c.country_id = cr.country_id
    group by
        rollup(c.account_mgr_id,
               cr.region_id,
               c.country_id,
               c.state_province);


-- sqlcl_snapshot {"hash":"94a8951151c5f3a5df42685074cbb7d09e2fc409","type":"VIEW","name":"OEHR_ACCOUNT_MANAGERS","schemaName":"WKSP_DEMO","sxml":""}