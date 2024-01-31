INTERFACE zif_animal_food_factory
  PUBLIC .
   methods create_food_with_meat RETURNING VALUE(ro_result) type REF TO zif_food.
   methods create_food_without_meat RETURNING VALUE(ro_result) type REF TO zif_food.
ENDINTERFACE.
