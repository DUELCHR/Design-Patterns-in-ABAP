CLASS zcl_duck_bh_fly_fast DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES yif_duck_behavior_fly .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_duck_bh_fly_fast IMPLEMENTATION.
  METHOD yif_duck_behavior_fly~fly.
    rv_result = 'I fly fast'.
  ENDMETHOD.

ENDCLASS.
