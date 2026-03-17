SELECT 
  jpf.company_id,
  cd.name AS company_name,
  COUNT(jpf.job_id) AS posting_count 
FROM 
  job_postings_fact jpf
LEFT JOIN company_dim cd
  ON jpf.company_id = cd.company_id
WHERE
    jpf.job_location = 'United States'
GROUP BY 
  jpf.company_id, 
  cd.name
HAVING COUNT(posting_count) > 3000
ORDER BY
  COUNT(posting_count) DESC
LIMIT 10;
