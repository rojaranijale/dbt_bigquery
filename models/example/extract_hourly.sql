WITH extracted_numbers_hourly AS (
  SELECT 
    Year_new,Hours_of_Videos_Uploaded_on_YouTube_Every_Hour,
    -- Extract the numeric value until the first space
    CAST(REGEXP_REPLACE(REGEXP_EXTRACT(Hours_of_Videos_Uploaded_on_YouTube_Every_Hour, r'([\d,]+)\s*.*'), ',', '') AS INT64) AS extracted_number_hourly
  FROM
    de2roja.youtube2.st1_Videos_upload_copy
)

SELECT
  Hours_of_Videos_Uploaded_on_YouTube_Every_Hour,
  extracted_number_hourly,Year_new
FROM extracted_numbers_hourly
