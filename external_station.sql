CREATE EXTERNAL TABLE dbo.STAGING_STATION
(
    station_id BIGINT,
    name VARCHAR(255),
    latitude FLOAT,
    longitude FLOAT
)
WITH (
    LOCATION = 'output/public.station.csv',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
);