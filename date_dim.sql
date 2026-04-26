CREATE EXTERNAL TABLE dbo.DATE_DIM
WITH (
    LOCATION = 'output/date_dim',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
)
AS
SELECT DISTINCT
    CAST(payment_date AS DATE) AS FULL_DATE,
    DAY(payment_date) AS day,
    MONTH(payment_date) AS month,
    DATEPART(QUARTER, payment_date) AS quarter,
    YEAR(payment_date) AS year,
    DATEPART(DAYOFYEAR, payment_date) AS day_of_year,
    DATEPART(WEEKDAY, payment_date) AS day_of_week
FROM dbo.STAGING_PAYMENT;