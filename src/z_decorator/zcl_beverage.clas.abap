CLASS zcl_beverage DEFINITION
  PUBLIC
  ABSTRACT
  CREATE PUBLIC .

  PUBLIC SECTION.
  DATA mo_beverage TYPE REF TO zcl_beverage.

   METHODS constructor IMPORTING io_beverage TYPE REF TO zcl_beverage OPTIONAL.
   METHODS cost ABSTRACT RETURNING VALUE(rv_result) TYPE i.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_beverage IMPLEMENTATION.
  METHOD constructor.
    mo_beverage = io_beverage.
  ENDMETHOD.
ENDCLASS.
