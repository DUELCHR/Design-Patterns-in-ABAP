CLASS zcl_vegetable DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_food .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_vegetable IMPLEMENTATION.

  METHOD zif_food~get_food_type.
    rv_result = 'Vegetable'.
  ENDMETHOD.
ENDCLASS.
