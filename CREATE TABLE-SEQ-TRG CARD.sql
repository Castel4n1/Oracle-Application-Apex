--Tabela para CARDS
CREATE TABLE CARD
( 
    ID_CARD number(10) NOT NULL,
    STRNOMECARD varchar2(50) NOT NULL,
    DTMATUALIZACAO varchar2(50),
    CONSTRAINT nomecard_pk PRIMARY KEY (ID_CARD)

);
--SEQUENCE
create sequence CARD_SEQ
start with 1
increment by 1
--TRIGGER

CREATE OR REPLACE NONEDITIONABLE TRIGGER "SYSTEM"."CARD_TRG" 
 before insert on "SYSTEM"."CARD" 
   for each row 
begin  
   if inserting then 
      if :NEW."ID_CARD" is null then 
         select CARD_SEQ.nextval into :NEW."ID_CARD" from dual; 
      end if; 
   end if; 
end;

/
ALTER TRIGGER "SYSTEM"."CARD_TRG" ENABLE;