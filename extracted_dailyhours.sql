WITH extracted_dailyhours AS (
  SELECT 
    Hours_of_Videos_Uploaded_on_YouTube_Every_Day,
    -- Extract the numeric value until the first space
    CAST(REGEXP_REPLACE(SPLIT(Hours_of_Videos_Uploaded_on_YouTube_Every_Day, ' ')[OFFSET(0)], '[^0-9]', '') AS INT64) AS extracted_dailyhour
  FROM
    de2roja.youtube2.st1_Videos_upload_copy
)

SELECT
  extracted_dailyhour,
  Hours_of_Videos_Uploaded_on_YouTube_Every_Day
FROM extracted_dailyhours;

