# Heading 1
## Heading 2
### Heading 3

Normal text

**bold**.  
*italics*.   
`this is a code`

- Bullet 1
- Bullet 2

1. Number 1
2. Number 2

[Link Text](https://google.com).   
![Alt Text](https://google.com/image.png).  


```
-- Codeblock

SELECT 
  sd.skills,
  MEDIAN(jpf.salary_year_avg) AS median_salary,
  COUNT(sd.skills) AS skill_count
FROM job_postings_fact jpf
INNER JOIN skills_job_dim sjd
  ON jpf.job_id = sjd.job_id
INNER JOIN skills_dim sd
  ON sjd.skill_id = sd.skill_id
WHERE 
  jpf.job_title_short = 'Data Engineer'
  AND jpf.job_work_from_home = True
  AND jpf.salary_year_avg IS NOT NULL
GROUP BY 
  sd.skills
ORDER BY 
  MEDIAN(jpf.salary_year_avg) DESC
LIMIT 25;
```