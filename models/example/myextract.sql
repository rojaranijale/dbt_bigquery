-- models/your_model.sql

WITH extracted_numbers AS (
  SELECT
    "Hours of Videos Uploaded on YouTube Every Day",
    -- Extract the numeric value using REGEXP_EXTRACT
    CAST(REGEXP_EXTRACT("Hours of Videos Uploaded on YouTube Every Day", r'(\d+) hours?') AS INT64) AS extracted_number
  FROM
    {{ ref('de2roja.youtube2.st1_Videos upload') }}
)
