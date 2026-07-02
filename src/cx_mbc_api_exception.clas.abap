CLASS cx_mbc_api_exception DEFINITION
  PUBLIC
  INHERITING FROM cx_static_check
  CREATE PUBLIC.

  PUBLIC SECTION.
    INTERFACES if_t100_dyn_msg.
    INTERFACES if_t100_message.
    INTERFACES if_xco_news.

    METHODS constructor
      IMPORTING
        textid   LIKE if_t100_message=>t100key OPTIONAL
        previous LIKE previous OPTIONAL.
ENDCLASS.

CLASS cx_mbc_api_exception IMPLEMENTATION.
  METHOD constructor.
    super->constructor( previous = previous ).
    CLEAR me->textid.
    IF textid IS INITIAL.
      if_t100_message~t100key = if_t100_message=>default_textid.
    ELSE.
      if_t100_message~t100key = textid.
    ENDIF.
  ENDMETHOD.

  METHOD if_xco_news~get_messages.
    RETURN. " todo, implement method
  ENDMETHOD.
ENDCLASS.
