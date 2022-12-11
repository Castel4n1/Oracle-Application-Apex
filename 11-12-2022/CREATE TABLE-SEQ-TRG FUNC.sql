--Tabela para FUNCIONARIO
CREATE TABLE FUNCIONARIO
( 
    ID_FUNCIONARIO number(10) NOT NULL,
    STRNOMEFUNCIONARIO varchar2(50) NOT NULL,
    DTMATUALIZACAO varchar2(50),
    CONSTRAINT nomeFUNCIONARIO_pk PRIMARY KEY (ID_FUNCIONARIO)

);
--SEQUENCE
create sequence FUNCIONARIO_SEQ
start with 1
increment by 1

--TRIGGER
CREATE OR REPLACE EDITIONABLE TRIGGER  "FUNCIONARIO_T1" 
BEFORE
insert or update or delete on "FUNCIONARIO"
for each row
begin
begin  
   if inserting then 
      if :NEW."ID_FUNCIONARIO" is null then 
         select FUNCIONARIO_SEQ.nextval into :NEW."ID_FUNCIONARIO" from dual; 
      end if; 
   end if; 
end;
end;

/
ALTER TRIGGER  "FUNCIONARIO_T1" ENABLE
/
