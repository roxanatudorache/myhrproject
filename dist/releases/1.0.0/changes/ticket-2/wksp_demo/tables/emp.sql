-- liquibase formatted sql
-- changeset WKSP_DEMO:1776929590934 stripComments:false  logicalFilePath:ticket-2/wksp_demo/tables/emp.sql
-- sqlcl_snapshot src/database/wksp_demo/tables/emp.sql:2d4a0a1b5d0fc7a953ad1596bc896850d3a7a90c:42bb8d03eb77662cb332250a9d1715fec3eaf693:alter

alter table wksp_demo.emp add (
    job varchar2(50)
)
/

