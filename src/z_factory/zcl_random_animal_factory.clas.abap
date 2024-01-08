CLASS zcl_random_animal_factory DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES zif_animal_factory .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_random_animal_factory IMPLEMENTATION.
  METHOD zif_animal_factory~create_animal.
    DATA(lv_animal_type_number) = cl_abap_random_int=>create( seed = cl_abap_random=>seed( )
                                                              min  = 0
                                                              max  = 2 )->get_next( ).
    IF lv_animal_type_number = 0.
      ro_result = NEW zcl_cat( ).
    ELSEIF lv_animal_type_number = 1.
      ro_result = NEW zcl_dog( ).
    ELSEIF lv_animal_type_number = 2.
      ro_result = NEW zcl_bird( ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
