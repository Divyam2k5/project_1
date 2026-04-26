CREATE EXTERNAL TABLE dbo.STAGING_TRIP
(
    trip_id BIGINT,
    rider_id BIGINT,
    rideable_type VARCHAR(50),
    start_at DATETIME,
    ended_at DATETIME,
    start_station_id BIGINT,
    end_station_id BIGINT
)
WITH (
    LOCATION = 'output/public.trip.csv',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
);