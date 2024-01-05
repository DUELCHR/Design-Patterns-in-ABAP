CLASS zcl_phone DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES zif_observer.
    INTERFACES zif_display.
    METHODS constructor IMPORTING io_wheather_station TYPE REF TO zif_weather_station optional
                                  io_out type ref to if_oo_adt_classrun_out.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_wheather_station TYPE REF TO zif_weather_station.
    data mv_registration_id type sysuuid_c22.
    data mo_out type REF TO if_oo_adt_classrun_out.
ENDCLASS.



CLASS zcl_phone IMPLEMENTATION.
  METHOD zif_display~display.
    mo_out->write(
        |Phone: Temperatur { mo_wheather_station->get_temperature( ) } and Pressure { mo_wheather_station->get_pressure( ) }| ).
  ENDMETHOD.

  METHOD constructor.
    mo_wheather_station = io_wheather_station.
    mo_out = io_out.
  ENDMETHOD.

  METHOD zif_observer~get_registration_id.
    rv_result = mv_registration_id.
  ENDMETHOD.

  METHOD zif_observer~set_registration_id.
    mv_registration_id = iv_id.
  ENDMETHOD.

  METHOD zif_observer~update.
    zif_display~display( ).
  ENDMETHOD.

  METHOD zif_display~display_using_events.
  mo_wheather_station ?= sender.
      mo_out->write(
        |Phone: Temperatur { mo_wheather_station->get_temperature( ) } and Pressure { mo_wheather_station->get_pressure( ) }| ).
  ENDMETHOD.

ENDCLASS.
