INTERFACE zif_house
  PUBLIC .
    METHODS get_door RETURNING VALUE(rv_result) type string.
    METHODS get_roof_type RETURNING VALUE(rv_result) type string.
    METHODS get_size RETURNING VALUE(rv_result) type string.
ENDINTERFACE.
