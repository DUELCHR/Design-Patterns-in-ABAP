CLASS ycl_duck_bh_quack_loud DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES yif_duck_behavior_quack .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ycl_duck_bh_quack_loud IMPLEMENTATION.
  METHOD yif_duck_behavior_quack~quack.
    rv_result = 'I quack loud'.
  ENDMETHOD.

ENDCLASS.
