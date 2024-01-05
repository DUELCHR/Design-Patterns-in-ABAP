INTERFACE zif_display
  PUBLIC .
    METHODS display.
    METHODS display_using_events for event changed of zif_observable
            IMPORTING sender.
ENDINTERFACE.
