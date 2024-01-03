CLASS ycl_duck_bh_fly_slow DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES yif_duck_behavior_fly .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_duck_bh_fly_slow IMPLEMENTATION.
  METHOD yif_duck_behavior_fly~fly.
    rv_result = 'I fly slow'.
  ENDMETHOD.

ENDCLASS.
