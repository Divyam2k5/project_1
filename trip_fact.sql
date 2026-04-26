CREATE EXTERNAL TABLE dbo.TRIP_FACT
WITH (
    LOCATION = 'output/trip_fact',
    DATA_SOURCE = SynapseFS,
    FILE_FORMAT = CsvFormat
)
AS
SELECT
    trip_id,
    rider_id,
    rideable_type,
    start_at,
    ended_at,
    start_station_id,
    end_station_id,
    DATEDIFF(MINUTE, start_at, ended_at) AS duration,
    DATEDIFF(YEAR, r.birthday, start_at) AS rider_age
FROM dbo.STAGING_TRIP t
JOIN dbo.RIDER_DIM r
ON t.rider_id = r.rider_id;