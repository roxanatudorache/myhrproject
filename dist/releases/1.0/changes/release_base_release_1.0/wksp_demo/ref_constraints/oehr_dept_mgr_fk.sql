-- liquibase formatted sql
-- changeset WKSP_DEMO:1776848389161 stripComments:false  logicalFilePath:release_base_release_1.0/wksp_demo/ref_constraints/oehr_dept_mgr_fk.sql
-- sqlcl_snapshot src/database/wksp_demo/ref_constraints/oehr_dept_mgr_fk.sql:null:94be68a010c688235962feb123b68a71920a001a:create

alter table oehr_departments
    add constraint oehr_dept_mgr_fk
        foreign key ( manager_id )
            references oehr_employees ( employee_id )
        enable;

