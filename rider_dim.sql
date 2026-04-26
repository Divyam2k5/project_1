CREATE EXTERNAL TABLE dbo.RIDER_DIM
WITH (
    LOCATION = 'output/rider_dim',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
)
AS
SELECT DISTINCT
    rider_id,
    first_name,
    last_name,
    address,
    birthday,
    account_start_date,
    account_end_date,
    is_member
FROM dbo.STAGING_RIDER;