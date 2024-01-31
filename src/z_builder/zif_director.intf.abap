INTERFACE zif_director
  PUBLIC .
  METHODS buildVilla RETURNING VALUE(ro_result) type ref to zif_house.
  METHODS build_family_home RETURNING VALUE(ro_result) type ref to zif_house.

ENDINTERFACE.
