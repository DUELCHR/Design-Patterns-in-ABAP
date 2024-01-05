INTERFACE zif_weather_station
  PUBLIC .
    METHODS get_temperature RETURNING VALUE(rv_result) type i.
    METHODS get_pressure RETURNING VALUE(rv_result) type i.
ENDINTERFACE.
