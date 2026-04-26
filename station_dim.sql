CREATE EXTERNAL TABLE dbo.STATION_DIM
WITH (
    LOCATION = 'output/station_dim',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
)
AS
SELECT DISTINCT
    station_id,
    name,
    latitude,
    longitude
FROM dbo.STAGING_STATION;