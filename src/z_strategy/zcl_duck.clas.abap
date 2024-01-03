CLASS zcl_duck DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    METHODS constructor
      IMPORTING io_fly_behavior     TYPE REF TO yif_duck_behavior_fly
                io_quack_behavior   TYPE REF TO yif_duck_behavior_quack
                io_display_behavior TYPE REF TO yif_duck_behavior_display.

    methods execute_behaviors RETURNING VALUE(rv_result) type string.

  PROTECTED SECTION.
  PRIVATE SECTION.
    DATA mo_fly_behavior TYPE REF TO yif_duck_behavior_fly.
    DATA mo_quack_behavior TYPE REF TO yif_duck_behavior_quack.
    DATA mo_display_behavior TYPE REF TO yif_duck_behavior_display.
ENDCLASS.



CLASS zcl_duck IMPLEMENTATION.
  METHOD constructor.
    mo_fly_behavior = io_fly_behavior.
    mo_quack_behavior = io_quack_behavior.
    mo_display_behavior = io_display_behavior.
  ENDMETHOD.

  METHOD execute_behaviors.

    rv_result = | { mo_fly_behavior->fly( ) } { mo_quack_behavior->quack( ) } { mo_display_behavior->display( ) } |.

  ENDMETHOD.



ENDCLASS.
