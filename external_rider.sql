CREATE EXTERNAL TABLE dbo.STAGING_RIDER
(
    rider_id BIGINT,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(255),
    birthday DATE,
    account_start_date DATE,
    account_end_date DATE,
    is_member BIT
)
WITH (
    LOCATION = 'output/public.rider.csv',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
);