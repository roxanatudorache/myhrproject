-- liquibase formatted sql
-- changeset  SqlCl:1776927998147 stripComments:false logicalFilePath:_custom/dept-data.sql
-- sqlcl_snapshot dist/releases/next/changes/ticket1/_custom/dept-data.sql:null:null:custom
insert into dept values(10, 'ACCOUNTING', 'NEW YORK');
insert into dept values(20, 'RESEARCH', 'DALLAS');
insert into dept values(30, 'SALES', 'CHICAGO');
insert into dept values(40, 'OPERATIONS', 'BOSTON');

