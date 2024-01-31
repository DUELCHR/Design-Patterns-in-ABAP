CLASS zcl_director DEFINITION
  PUBLIC
  FINAL
  CREATE private.

  PUBLIC SECTION.

    INTERFACES zif_director.
    class-METHODS get_instance RETURNING VALUE(ro_result) type ref to zif_director.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_director IMPLEMENTATION.
  METHOD zif_director~buildvilla.
    DATA(lo_builder) = zcl_house_builder=>get_instance( ).
    lo_builder->set_door( 'Big Door' ).
    lo_builder->set_size( 'XXL' ).
    lo_builder->set_roof_type( 'Flat' ).

    ro_result = lo_builder->build( ).
  ENDMETHOD.

  METHOD zif_director~build_family_home.
    DATA(lo_builder) = zcl_house_builder=>get_instance( ).
    lo_builder->set_door( 'Medium Door' ).
    lo_builder->set_size( 'XL' ).
    lo_builder->set_roof_type( 'Gable' ).

    ro_result = lo_builder->build( ).
  ENDMETHOD.

  METHOD get_instance.
    ro_result = new zcl_director( ).
  ENDMETHOD.

ENDCLASS.
