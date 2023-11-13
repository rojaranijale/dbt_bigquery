-- models/example/reverse_year.sql

-- Duplicate the year_new column
WITH duplicated_years AS (
  SELECT
    
    Year_new AS source_year
  FROM
    de2roja.youtube2.st1_Premium_subscribers
    ORDER BY
  Year_new DESC
  SELECT
    
    Year_new AS dest_year
  FROM
    de2roja.youtube2.st1_Premium_subscribers
    ORDER BY
  Year_new ASC

)

-- Order the duplicated years in reverse
SELECT
  dest_year,
  source_year
FROM
  duplicated_years



