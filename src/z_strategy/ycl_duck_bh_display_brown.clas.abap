CLASS ycl_duck_bh_display_brown DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES yif_duck_behavior_display .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_duck_bh_display_brown IMPLEMENTATION.
  METHOD yif_duck_behavior_display~display.
    rv_result = 'I am brown'.
  ENDMETHOD.

ENDCLASS.
