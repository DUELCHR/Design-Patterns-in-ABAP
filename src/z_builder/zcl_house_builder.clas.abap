CLASS zcl_house_builder DEFINITION
  PUBLIC
  FINAL
  CREATE PRIVATE.

  PUBLIC SECTION.
    INTERFACES zif_house_builder.
    CLASS-METHODS get_instance RETURNING VALUE(ro_result) TYPE REF TO zif_house_builder.
    METHODS constructor IMPORTING io_house TYPE REF TO zcl_house.
  PROTECTED SECTION.

  PRIVATE SECTION.

    DATA mo_house TYPE REF TO zcl_house.
ENDCLASS.



CLASS zcl_house_builder IMPLEMENTATION.

  METHOD zif_house_builder~build.
    ro_result = mo_house.
  ENDMETHOD.

  METHOD zif_house_builder~set_door.
    mo_house->mv_door = iv_door.
    ro_result = me.
  ENDMETHOD.

  METHOD zif_house_builder~set_roof_type.
    mo_house->mv_roof_type = iv_roof_type.
    ro_result = me.
  ENDMETHOD.

  METHOD zif_house_builder~set_size.
    mo_house->mv_size = iv_size.
    ro_result = me.
  ENDMETHOD.

  METHOD get_instance.
    ro_result = new zcl_house_builder( new zcl_house( ) ).
  ENDMETHOD.

  METHOD constructor.
    mo_house = io_house.
  ENDMETHOD.

ENDCLASS.
