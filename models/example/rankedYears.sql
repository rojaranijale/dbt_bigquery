WITH ranked_years AS (
  SELECT DISTINCT Year_new
  FROM de2roja.youtube2.st1_Premium_subscribers
  ORDER BY Year_new DESC
)

SELECT
  ranked_years.Year_new AS source,
  LEAD(ranked_years.Year_new) OVER (ORDER BY ranked_years.Year_new) AS target,
  COUNT(*) AS value
FROM ranked_years
JOIN st1_Premium_subscribers ON ranked_years.Year_new = st1_Premium_subscribers.Year_new
GROUP BY ranked_years.Year_new
HAVING target IS NOT NULL
ORDER BY ranked_years.Year_new
