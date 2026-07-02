INTERFACE if_mbc_cp_api_rap_table_cts PUBLIC.

  TYPES:
    BEGIN OF ts_table_entity_relation,
      entity TYPE string,
      table  TYPE string,
    END OF ts_table_entity_relation.
  TYPES tt_table_entity_relations TYPE STANDARD TABLE OF ts_table_entity_relation WITH EMPTY KEY.

  METHODS validate_changes
    IMPORTING
      transport_request TYPE string
      table             TYPE string
      keys              TYPE REF TO data
      reported          TYPE REF TO data
      failed            TYPE REF TO data
      change            TYPE REF TO data
    RAISING
      cx_mbc_api_exception.

  METHODS record_changes
    IMPORTING
      transport_request TYPE string
      create            TYPE REF TO data OPTIONAL
      update            TYPE REF TO data OPTIONAL
      delete            TYPE REF TO data OPTIONAL
    RAISING
      cx_mbc_api_exception.

ENDINTERFACE.
