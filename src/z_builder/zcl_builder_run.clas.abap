CLASS zcl_builder_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_builder_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    " Create first house
    DATA(lo_house_01) = zcl_house_builder=>get_instance( )->set_door( 'Big Door' )->set_size( 'XL' )->set_roof_type(
                                                                                                       'Flat' )->build( ).
    " Create second house
    DATA(lo_house_02) = zcl_house_builder=>get_instance( )->set_door( 'Small Door' )->set_size( 'L' )->set_roof_type(
                                                                                                        'Gable' )->build( ).
    " Create third house
    DATA(lo_house_03) = zcl_house_builder=>get_instance( )->set_door( 'Simple Door' )->build( ).

    out->write(
        |First House Door: { lo_house_01->get_door( ) }, size: { lo_house_01->get_size( ) }, roof type: { lo_house_01->get_roof_type( ) }| ).
    out->write(
        |Second House Door: { lo_house_02->get_door( ) }, size: { lo_house_02->get_size( ) }, roof type: { lo_house_02->get_roof_type( ) }| ).
    out->write(
        |Third House Door: { lo_house_03->get_door( ) }, size: { lo_house_03->get_size( ) }, roof type: { lo_house_03->get_roof_type( ) }| ).

    " Now with an director
    DATA(lo_director) = zcl_director=>get_instance( ).
    DATA(lo_villa) = lo_director->buildvilla( ).
    DATA(lo_family_home) = lo_director->build_family_home( ).

    out->write(
        |Villa Door: { lo_villa->get_door( ) }, size: { lo_villa->get_size( ) }, roof type: { lo_villa->get_roof_type( ) }| ).
    out->write(
        |Familiy Home Door: { lo_family_home->get_door( ) }, size: { lo_family_home->get_size( ) }, roof type: { lo_family_home->get_roof_type( ) }| ).
  ENDMETHOD.

ENDCLASS.
