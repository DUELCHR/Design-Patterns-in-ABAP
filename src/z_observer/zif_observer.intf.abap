INTERFACE zif_observer
  PUBLIC.
  METHODS get_registration_id RETURNING VALUE(rv_result) TYPE sysuuid_c22.

  METHODS set_registration_id
    IMPORTING iv_id            TYPE sysuuid_c22
    RETURNING VALUE(rv_result) TYPE sysuuid_c22.

  METHODS update.
ENDINTERFACE.
