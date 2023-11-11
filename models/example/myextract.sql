-- models/your_model.sql

WITH extracted_numbers AS (
  SELECT
    Hours_of_Videos_Uploaded_on_YouTube_Every_Day,
    -- Extract the numeric value using REGEXP_EXTRACT
    CAST(REGEXP_EXTRACT(Hours_of_Videos_Uploaded_on_YouTube_Every_Day, r'(\d+) hours?') AS INT64) AS extracted_number
  FROM
    {{ ref(`de2roja.youtube2.st1_Videos upload`) }}
)

-- You can then use the extracted numbers in further transformations or analysis
SELECT
  
  extracted_number
FROM
  extracted_numbers;
