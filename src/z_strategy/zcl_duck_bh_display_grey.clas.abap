CLASS zcl_duck_bh_display_grey DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_duck_behavior_display .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_duck_bh_display_grey IMPLEMENTATION.
  METHOD zif_duck_behavior_display~display.
    rv_result = 'I am grey'.
  ENDMETHOD.

ENDCLASS.
