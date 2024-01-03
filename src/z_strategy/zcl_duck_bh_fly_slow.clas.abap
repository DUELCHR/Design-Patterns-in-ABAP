class ZCL_DUCK_BH_FLY_SLOW definition
  public
  final
  create public .

public section.

  interfaces ZIF_DUCK_BEHAVIOR_FLY .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS ZCL_DUCK_BH_FLY_SLOW IMPLEMENTATION.


  METHOD zif_duck_behavior_fly~fly.
    rv_result = 'I fly slow'.
  ENDMETHOD.
ENDCLASS.
