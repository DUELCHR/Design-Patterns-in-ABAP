INTERFACE zif_animal_factory
  PUBLIC .
  METHODS create_animal RETURNING VALUE(ro_result) type REF TO zif_animal.

ENDINTERFACE.
