EXPLAIN analyze 
SELECT 
  jpf.company_id,
  cd.name AS company_name,
  COUNT(jpf.job_id) AS posting_count 
FROM 
  job_postings_fact jpf
LEFT JOIN company_dim cd
  ON jpf.company_id = cd.company_id
WHERE 
  jpf.job_country = 'Australia'
GROUP BY 
  jpf.company_id, 
  cd.name
--HAVING COUNT(jpf.job_id) > 3000
ORDER BY
  COUNT(jpf.job_id) DESC;