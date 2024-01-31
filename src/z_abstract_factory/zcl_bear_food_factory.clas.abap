CLASS zcl_bear_food_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_animal_food_factory .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_bear_food_factory IMPLEMENTATION.
  METHOD zif_animal_food_factory~create_food_without_meat.
    ro_result = NEW zcl_vegetable( ).
  ENDMETHOD.


  METHOD zif_animal_food_factory~create_food_with_meat.
  ro_result = new zcl_fish( ).

  ENDMETHOD.
ENDCLASS.
