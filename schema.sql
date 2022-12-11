
CREATE TABLE IF NOT EXISTS hourly_weather(
   hourly_weatherId INTEGER PRIMARY KEY AUTOINCREMENT,
   DATE DATE,
   HourlyDewPointTemperature FLOAT,
   HourlyPrecipitation FLOAT
   HourlyWindSpeed FLOAT
)

CREATE TABLE IF NOT EXISTS daily_weather(
   daily_weatherId INTEGER PRIMARY KEY AUTOINCREMENT,
   DATE DATE,
   DailyPrecipitation FLOAT,
   DailyWindSpeed FLOAT
   DailyAverageDewPointTemperature FLOAT
   DailySustainedWindSpeed FLOAT
)

CREATE TABLE IF NOT EXISTS taxi_trips(
   taxi_tripsId INTEGER PRIMARY KEY AUTOINCREMENT,
   PU_datetime DATE,
   DO_datetime DATE,
   PU_lon FLOAT
   PU_lat FLOAT
   DO_lon FLOAT
   DO_lat FLOAT
   tip_amt FLOAT
   total_amt FLOAT
   distance FLOAT
)

CREATE TABLE IF NOT EXISTS uber_trips(
   uber_tripsId INTEGER PRIMARY KEY AUTOINCREMENT,
   fare_amount FLOAT
   PU_datetime DATE,
   PU_lon FLOAT
   PU_lat FLOAT
   DO_lon FLOAT
   DO_lat FLOAT
   passenger_count INTEGER
   distance FLOAT
)
