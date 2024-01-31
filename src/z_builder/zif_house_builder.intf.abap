INTERFACE zif_house_builder
  PUBLIC.
  METHODS set_size IMPORTING iv_size          TYPE string
                   RETURNING VALUE(ro_result) TYPE REF TO zif_house_builder.

  METHODS set_roof_type IMPORTING iv_roof_type     TYPE string
                        RETURNING VALUE(ro_result) TYPE REF TO zif_house_builder.

  METHODS set_door IMPORTING iv_door          TYPE string
                   RETURNING VALUE(ro_result) TYPE REF TO zif_house_builder.

  METHODS build RETURNING VALUE(ro_result) TYPE REF TO zif_house.
ENDINTERFACE.
