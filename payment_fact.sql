CREATE EXTERNAL TABLE dbo.PAYMENT_FACT
WITH (
    LOCATION = 'output/payment_fact',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
)
AS
SELECT
    payment_id,
    rider_id,
    payment_date,
    amount
FROM dbo.STAGING_PAYMENT;