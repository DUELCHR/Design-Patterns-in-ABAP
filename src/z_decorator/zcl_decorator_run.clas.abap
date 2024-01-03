CLASS zcl_decorator_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_decorator_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    out->write( 'Decorator Pattern' ).
    "make Coffee
    data(lo_Coffee) = new zcl_coffee( ).
    "add Milk.
    data(lo_coffee_with_milk) = new zcl_addon_milk( lo_Coffee ).
    "get cost
    out->write( |Coffee with milk Costs: { lo_Coffee_with_milk->cost( ) }| ).

  ENDMETHOD.

ENDCLASS.
