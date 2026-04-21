-- liquibase formatted sql
-- changeset WKSP_DEMO:1776783549131 stripComments:false  logicalFilePath:release_first_release_1.0/wksp_demo/triggers/oehr_update_job_history.sql
-- sqlcl_snapshot src/database/wksp_demo/triggers/oehr_update_job_history.sql:null:f994defde849a7a82b120514367e3745c93c217a:create

create or replace editionable trigger oehr_update_job_history after
    update of job_id, department_id on oehr_employees
    for each row
declare
    l_sdate date;
begin
    if ( :old.job_id != :new.job_id
    or :old.department_id != :new.department_id ) then
        for c1 in (
            select
                max(end_date) prev_start_date
            from
                oehr_job_history
            where
                employee_id = :old.employee_id
        ) loop
            l_sdate := c1.prev_start_date + ( ( 24 / 60 ) / 60 );
        end loop;

        oehr_add_job_history(:old.employee_id,
                             nvl(l_sdate,
                                 :old.hire_date),
                             sysdate,
                             :old.job_id,
                             :old.department_id);

    end if;
end;
/

alter trigger oehr_update_job_history enable;

