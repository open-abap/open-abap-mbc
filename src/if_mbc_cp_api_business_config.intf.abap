INTERFACE if_mbc_cp_api_business_config PUBLIC.

  TYPES ty_namespace   TYPE c LENGTH 10.
  TYPES ty_identifier  TYPE c LENGTH 30.
  TYPES ty_name        TYPE c LENGTH 60.
  TYPES ty_description  TYPE c LENGTH 60.

  METHODS create
    IMPORTING
      iv_name                      TYPE ty_name
      iv_description               TYPE ty_description
      iv_service_binding           TYPE string
      iv_service_name              TYPE string
      iv_service_version           TYPE i
      iv_root_entity_set           TYPE string
      iv_transport                 TYPE string
      iv_skip_root_entity_list_rep TYPE abap_bool
    RAISING
      cx_mbc_api_exception.

ENDINTERFACE.
