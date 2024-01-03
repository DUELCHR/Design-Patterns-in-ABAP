CLASS zcl_coffee DEFINITION
  PUBLIC
  INHERITING FROM zcl_beverage
  CREATE PUBLIC .

  PUBLIC SECTION.

    METHODS: cost REDEFINITION.

  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_coffee IMPLEMENTATION.
  METHOD cost.
    rv_result = 10.
  ENDMETHOD.

ENDCLASS.