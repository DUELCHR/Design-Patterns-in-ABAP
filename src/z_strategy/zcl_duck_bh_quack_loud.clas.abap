CLASS zcl_duck_bh_quack_loud DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_duck_behavior_quack .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_duck_bh_quack_loud IMPLEMENTATION.
  METHOD zif_duck_behavior_quack~quack.
    rv_result = 'I quack loud'.
  ENDMETHOD.

ENDCLASS.
