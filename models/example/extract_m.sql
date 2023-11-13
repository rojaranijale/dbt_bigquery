WITH extracted_numbers_m AS (
  SELECT 
    Year_new,Hours_of_Videos_Uploaded_on_YouTube__Every_Minute,
    -- Extract the numeric value until the first space
    CAST(REGEXP_REPLACE(REGEXP_EXTRACT(Hours_of_Videos_Uploaded_on_YouTube__Every_Minute, r'([\d,]+)\s*.*'), ',', '') AS INT64) AS extracted_number_m
  FROM
    de2roja.youtube2.st1_Videos_upload_copy
)

SELECT
  Hours_of_Videos_Uploaded_on_YouTube__Every_Minute,
  extracted_number_m,Year_new
FROM extracted_numbers_m
