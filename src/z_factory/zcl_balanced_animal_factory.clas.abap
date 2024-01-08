CLASS zcl_balanced_animal_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_animal_factory.
  PROTECTED SECTION.
  PRIVATE SECTION.
    CONSTANTS: mc_animal_set_size type i VALUE 3.
    DATA mv_animal_counter TYPE i.


ENDCLASS.



CLASS zcl_balanced_animal_factory IMPLEMENTATION.
  METHOD zif_animal_factory~create_animal.
    DATA(lv_animal_type_number) = mv_animal_counter MOD mc_animal_set_size.

    IF lv_animal_type_number = 0.
      ro_result = NEW zcl_cat( ).
    ELSEIF lv_animal_type_number = 1.
      ro_result = NEW zcl_dog( ).
    ELSEIF lv_animal_type_number = 2.
      ro_result = NEW zcl_bird( ).
    ENDIF.

    mv_animal_counter += 1.
  ENDMETHOD.
ENDCLASS.
