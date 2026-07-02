CLASS mbc_cp_api DEFINITION
  PUBLIC
  CREATE PUBLIC.

  PUBLIC SECTION.
    CLASS-METHODS business_configuration
      IMPORTING
        iv_identifier             TYPE if_mbc_cp_api_business_config=>ty_identifier
        iv_namespace              TYPE if_mbc_cp_api_business_config=>ty_namespace
      RETURNING
        VALUE(ro_business_config) TYPE REF TO if_mbc_cp_api_business_config
      RAISING
        cx_mbc_api_exception.

    CLASS-METHODS rap_table_cts
      IMPORTING
        table_entity_relations  TYPE if_mbc_cp_api_rap_table_cts=>tt_table_entity_relations
      RETURNING
        VALUE(ro_rap_table_cts) TYPE REF TO if_mbc_cp_api_rap_table_cts
      RAISING
        cx_mbc_api_exception.
ENDCLASS.

CLASS mbc_cp_api IMPLEMENTATION.
  METHOD business_configuration.
    " todo, implement method
    RETURN.
  ENDMETHOD.

  METHOD rap_table_cts.
    " todo, implement method
    RETURN.
  ENDMETHOD.
ENDCLASS.
