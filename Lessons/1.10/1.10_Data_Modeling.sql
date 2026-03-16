select 
    job_id,
    job_title_short,
    salary_year_avg,
    company_id
from
    job_postings_fact;

select *
from information_schema.tables
where table_catalog = 'data_jobs';

select *
from information_schema.table_constraints
where table_catalog = 'data_jobs';

/*
DESCRIBE job_postings_fact;
*/