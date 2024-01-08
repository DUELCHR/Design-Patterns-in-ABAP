CLASS zcl_factory_pattern_run DEFINITION
  PUBLIC FINAL
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

    TYPES: BEGIN OF lty_s_animal_farm,
             animal TYPE REF TO zif_animal,
           END OF lty_s_animal_farm.
    TYPES lty_t_animal_farm TYPE TABLE OF lty_s_animal_farm.
  PRIVATE SECTION.

    METHODS use_balanced_animal_factory
      IMPORTING
        i_out TYPE REF TO if_oo_adt_classrun_out.
    METHODS use_random_animal_factory
      IMPORTING
        i_out TYPE REF TO if_oo_adt_classrun_out.

    METHODS output_to_console
      IMPORTING
        i_out          TYPE REF TO if_oo_adt_classrun_out
        it_animal_farm TYPE lty_t_animal_farm.
ENDCLASS.


CLASS zcl_factory_pattern_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    use_balanced_animal_factory( out ).
    use_random_animal_factory( out ).
  ENDMETHOD.

  METHOD use_balanced_animal_factory.
    DATA lo_balanced_animal_factory TYPE REF TO zif_animal_factory.

    " Create Balanced Animal Factory
    lo_balanced_animal_factory = NEW zcl_balanced_animal_factory( ).

    " Create an internal table to collect the animals
    DATA lt_animal_farm TYPE lty_t_animal_farm.

    " add an animal to the farm using a balanced factory to ensure that all animals are created in equal numbers
    DO 6 TIMES.
      lt_animal_farm = VALUE #( BASE lt_animal_farm
                                ( animal = lo_balanced_animal_factory->create_animal( ) ) ).
    ENDDO.

    " we should now have 6 animals on the farm 2 cats, 2 dogs and 2 birds.
    output_to_console( i_out          = i_out
                       it_animal_farm = lt_animal_farm ).
  ENDMETHOD.

  METHOD use_random_animal_factory.
    DATA lo_random_animal_factory TYPE REF TO zif_animal_factory.

    " Create Random Animal Factory
    lo_random_animal_factory = NEW zcl_random_animal_factory( ).

    " Create an internal table to collect the animals
    DATA lt_animal_farm TYPE lty_t_animal_farm.

    " add an animal to the farm using a balanced factory to ensure that all animals are created in random numbers
    DO 6 TIMES.
      lt_animal_farm = VALUE #( BASE lt_animal_farm
                                ( animal = lo_random_animal_factory->create_animal( ) ) ).
    ENDDO.

    " we should now have 6 animals in random numbers.
    output_to_console( i_out          = i_out
                       it_animal_farm = lt_animal_farm ).
  ENDMETHOD.


  METHOD output_to_console.

    i_out->write( 'My little Farm' ).
    i_out->write( |Animal-Counter: { lines( it_animal_farm ) }| ).
    LOOP AT it_animal_farm ASSIGNING FIELD-SYMBOL(<ls_animal_farm>).
      i_out->write( | { sy-tabix }: { <ls_animal_farm>-animal->get_kind( ) } | ).
    ENDLOOP.

  ENDMETHOD.

ENDCLASS.
