CLASS zcl_duck_bh_display_grey DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES yif_duck_behavior_display .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_duck_bh_display_grey IMPLEMENTATION.
  METHOD yif_duck_behavior_display~display.
    rv_result = 'I am grey'.
  ENDMETHOD.

ENDCLASS.
