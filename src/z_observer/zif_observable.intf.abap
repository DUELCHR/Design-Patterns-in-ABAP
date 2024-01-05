INTERFACE zif_observable
  PUBLIC .
  EVENTS changed.
  METHODS add_observer IMPORTING io_observer TYPE REF TO zif_observer.
  METHODS remove_observer IMPORTING io_observer TYPE REF TO zif_observer.
  METHODS notify.
  METHODS notify_using_events.

  TYPES: BEGIN OF ty_s_observers,
           observer_id type sysuuid_c22,
           observer TYPE REF TO zif_observer,
         END OF ty_s_observers.
  TYPES ty_t_observers TYPE TABLE OF ty_s_observers with KEY observer_id.
ENDINTERFACE.
