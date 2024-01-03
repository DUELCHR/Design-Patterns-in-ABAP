CLASS zcl_strategy_run DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
   INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_strategy_run IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.
    DATA(lo_city_duck) = NEW zcl_duck( io_fly_behavior     = NEW zcl_duck_bh_fly_slow( )
                                          io_quack_behavior   = NEW zcl_duck_bh_quack_loud( )
                                          io_display_behavior = NEW zcl_duck_bh_display_grey( ) ).

    out->write( 'city duck' ).
    out->write( lo_city_duck->execute_behaviors( ) ).


    DATA(lo_wild_duck) = NEW zcl_duck( io_fly_behavior     = NEW zcl_duck_bh_fly_fast( )
                                          io_quack_behavior   = NEW zcl_duck_bh_quack_loud( )
                                          io_display_behavior = NEW zcl_duck_bh_display_brown( ) ).

    out->write( 'wild duck' ).
    out->write( lo_wild_duck->execute_behaviors( ) ).
  ENDMETHOD.

ENDCLASS.
