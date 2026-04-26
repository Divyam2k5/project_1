CREATE EXTERNAL TABLE dbo.STAGING_PAYMENT
(
    payment_id BIGINT,
    rider_id BIGINT,
    amount FLOAT,
    payment_date DATE
)
WITH (
    LOCATION = 'output/public.payment.csv',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
);