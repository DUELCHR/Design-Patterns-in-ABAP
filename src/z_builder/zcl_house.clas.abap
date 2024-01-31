CLASS zcl_house DEFINITION
  PUBLIC
  FINAL
  CREATE private
  GLOBAL FRIENDS zcl_house_builder.

  PUBLIC SECTION.
    INTERFACES zif_house.
  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mv_size      TYPE string.
    DATA mv_door      TYPE string.
    DATA mv_roof_type TYPE string.
ENDCLASS.



CLASS zcl_house IMPLEMENTATION.
   METHOD zif_house~get_door.
    rv_result = mv_door.
  ENDMETHOD.

  METHOD zif_house~get_roof_type.
    rv_result = mv_roof_type.
  ENDMETHOD.

  METHOD zif_house~get_size.
    rv_result = mv_size.
  ENDMETHOD.

ENDCLASS.
