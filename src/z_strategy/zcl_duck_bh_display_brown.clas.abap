CLASS zcl_duck_bh_display_brown DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_duck_behavior_display .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_duck_bh_display_brown IMPLEMENTATION.
  METHOD zif_duck_behavior_display~display.
    rv_result = 'I am brown'.
  ENDMETHOD.

ENDCLASS.
