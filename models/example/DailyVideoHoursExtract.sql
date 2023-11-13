WITH extracted_dailyhours AS (
  SELECT 
    Hours_of_Videos_Uploaded_on_YouTube_Every_Day,
    -- Extract the numeric value until the first space
    CAST(SPLIT(REGEXP_EXTRACT(Hours_of_Videos_Uploaded_on_YouTube_Every_Day, r'(\d+)\s*'), ' ')[OFFSET(0)] AS INT64) AS extracted_dailyhour
  FROM
    de2roja.youtube2.st1_Videos_upload_copy
)

SELECT
  extracted_hours_daily,Year_new
FROM extracted_dailyhours
