CLASS zcl_observer_with_events_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_weather_station TYPE REF TO zcl_weather_station.
ENDCLASS.



CLASS zcl_observer_with_events_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " create new weather station
    mo_weather_station = NEW zcl_weather_station( ).

    " create Phone Display without reference to the weather station
    DATA(lo_phone_display) = NEW zcl_phone( io_out = out ).

    " create TV Display without reference to the weather station
    DATA(lo_tv_display) = NEW zcl_tv( io_out = out ).
    " register Phone Display to weather station
    SET HANDLER lo_phone_display->zif_display~display_using_events FOR mo_weather_station ACTIVATION abap_true.

    " register TV Display to weather station
    SET HANDLER lo_tv_display->zif_display~display_using_events FOR mo_weather_station.

    " simulate that something has changed and inform all observers.
    mo_weather_station->zif_observable~notify_using_events( ).

    " unregister phone as observer
    SET HANDLER lo_phone_display->zif_display~display_using_events FOR mo_weather_station ACTIVATION abap_false.

    " simulate that something has changed and inform all observers.
    mo_weather_station->zif_observable~notify_using_events( ).
  ENDMETHOD.

ENDCLASS.
