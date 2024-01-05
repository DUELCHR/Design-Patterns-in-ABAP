CLASS zcl_observer_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_weather_station TYPE REF TO zcl_weather_station.
ENDCLASS.



CLASS zcl_observer_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
      " create new weather station
    mo_weather_station = NEW zcl_weather_station( ).

    " create Phone Display with reference to the weather station
    DATA(lo_phone_display) = NEW zcl_phone( io_wheather_station = mo_weather_station
                                            io_out              = out ).
    " create TV Display with reference to the weather station
    DATA(lo_tv_display) = NEW zcl_tv( io_wheather_station = mo_weather_station
                                      io_out              = out ).

    " register Phone Display to weather station
    mo_weather_station->zif_observable~add_observer( lo_phone_display ).

    " register TV Display to weather station
    mo_weather_station->zif_observable~add_observer( lo_tv_display ).

    " simulate that something has changed and inform all observers.
    mo_weather_station->zif_observable~notify( ).

    " unregister phone as observer
    mo_weather_station->zif_observable~remove_observer( io_observer = lo_phone_display ).

    " simulate that something has changed and inform all observers.
    mo_weather_station->zif_observable~notify( ).
  ENDMETHOD.

ENDCLASS.
