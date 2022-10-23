-- https://datalemur.com/questions/duplicate-job-listings

SELECT COUNT(DISTINCT a.company_id) AS duplicate_companies
FROM job_listings a 
JOIN job_listings b 
ON a.company_id=b.company_id
WHERE a.title=b.title AND a.job_id <> b.job_id