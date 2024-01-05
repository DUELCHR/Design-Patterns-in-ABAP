CLASS zcl_weather_station DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_observable.
    INTERFACES zif_weather_station.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mt_observers TYPE zif_observable=>ty_t_observers.
    METHODS get_new_uuid
      RETURNING
        VALUE(rv_uuid) TYPE sysuuid_c22.
ENDCLASS.



CLASS zcl_weather_station IMPLEMENTATION.
  METHOD zif_observable~add_observer.
    "get new registration ID for the observer
    DATA(lv_registration_id) = get_new_uuid( ).
    "pass the new registration ID to the observer
    io_observer->set_registration_id( lv_registration_id ).
    "register the observer
    mt_observers = VALUE #( BASE mt_observers
                            ( observer_id = lv_registration_id
                              observer    = io_observer ) ).
  ENDMETHOD.

  METHOD zif_observable~notify.
    "call the update method of all registered observers
    LOOP AT mt_observers ASSIGNING FIELD-SYMBOL(<ls_observer>).
      <ls_observer>-observer->update( ).
    ENDLOOP.
  ENDMETHOD.

  METHOD zif_observable~notify_using_events.
    RAISE EVENT zif_observable~changed.
  ENDMETHOD.

  METHOD zif_observable~remove_observer.
    DELETE TABLE mt_observers WITH TABLE KEY observer_id = io_observer->get_registration_id( ).
  ENDMETHOD.

  METHOD get_new_uuid.
    TRY.
        rv_uuid  = cl_uuid_factory=>create_system_uuid( )->create_uuid_c22( ).
      CATCH cx_uuid_error.
        "handle exception
    ENDTRY.
  ENDMETHOD.

  METHOD zif_weather_station~get_pressure.
    rv_result = 3.
  ENDMETHOD.

  METHOD zif_weather_station~get_temperature.
    rv_result = 20.
  ENDMETHOD.



ENDCLASS.
