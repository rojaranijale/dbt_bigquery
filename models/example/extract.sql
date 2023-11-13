WITH extracted_numbers AS (
  SELECT 
    Hours_of_Videos_Uploaded_on_YouTube_Every_Day,
    -- Extract the numeric value until the first space
    CAST(REGEXP_REPLACE(REGEXP_EXTRACT(Hours_of_Videos_Uploaded_on_YouTube_Every_Day, r'([\d,]+)\s*.*'), ',', '') AS INT64) AS extracted_number
  FROM
    de2roja.youtube2.st1_Videos_upload_copy
)

SELECT
  Hours_of_Videos_Uploaded_on_YouTube_Every_Day,
  extracted_number
FROM extracted_numbers
