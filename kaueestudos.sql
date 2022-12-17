create or replace FUNCTION verifica_permissao (
    p_fkeusuario        IN NUMBER,
    p_modulo            IN NUMBER,
    p_pagina            IN NUMBER,
    p_fkepermissao      IN NUMBER,
    p_nivel_permissao   IN NUMBER DEFAULT 1 -- SETA PARA TODOS NIVEL 1 de PERMISSAO // P_NIVEL = BITNIVEL 1
) RETURN NUMBER IS
    v_nivel              NUMBER;
    v_usuariogrupo       VARCHAR2(100);
    v_existe_permissao   NUMBER;
    v_permissao          NUMBER; --0: não permite 1:permite


BEGIN
    BEGIN
--VERIFICA SE UM USUÁRIO PERTENCE A UM GRUPO JÁ EXISTENTE
        SELECT
            LISTAGG(fkeusuario_grupo,',') WITHIN GROUP(ORDER BY id)
        INTO  v_usuariogrupo
        FROM  usuariogrupo
        WHERE fkeusuario_usuario = p_fkeusuario;

    EXCEPTION
        WHEN no_data_found THEN
             v_usuariogrupo := NULL;
    END;              
--VERIFICA SE UM USUÁRIO PERTENCE A UM GRUPO JÁ EXISTENTE


--Verifica O BITNIVEL DO USUARIO

    BEGIN
        SELECT bitnivel INTO v_nivel
        FROM usuario 
        WHERE id = p_fkeusuario
        AND dtmpermissaoacesso IS NULL;

    EXCEPTION
        WHEN no_data_found THEN
            v_nivel := NULL;
    END;

    IF v_nivel IS NOT NULL THEN
        IF
            v_nivel IN (0,1,3)
        THEN
            v_permissao := 1;
--Verifica O BITNIVEL DO USUARIO

--Usuario Portal não acessa módulo
        ELSIF v_nivel = 4 THEN
              v_permissao := 0;
--Usuario Portal não acessa módulo

        ELSIF v_nivel IN (2,3) THEN

            IF
                v_usuariogrupo IS NOT NULL
            THEN
                SELECT
                    COUNT(1)
                INTO v_existe_permissao
                FROM
                    permissaousuario perm
                    INNER JOIN itempermissao itemp ON itemp.fkeitem = perm.fkeitem
                    INNER JOIN item it ON it.id = itemp.fkeitem
                                          AND it.id = perm.fkeitem
                                          AND it.bitnivel = p_nivel_permissao
                                          AND itemp.fkepermissao = perm.fkepermissao
                WHERE
                    perm.dtminativo IS NULL
                    AND perm.fkepermissao = p_fkepermissao
                    AND it.modulo = p_modulo
                    AND it.pagina = p_pagina
                    AND perm.fkeusuario_permissao IN (
                        SELECT
                            fkeusuario_grupo
                        FROM
                            usuariogrupo
                        WHERE
                            fkeusuario_usuario = p_fkeusuario
                    );      
                       --raise_application_error(-20001,'IFv_permissaoGRUPO: ' || v_existe_permissao||'grupo:'||v_usuariogrupo);  
         --  END LOOP; 

                IF
                    v_existe_permissao > 0
                THEN
                    v_permissao := 1;
                    -- raise_application_error(-20002,'v_permissaogrupo>0: ' );    
                    RETURN v_permissao;
                ELSE
                    SELECT
                        COUNT(1)
                    INTO v_permissao
                    FROM
                        permissaousuario perm
                        INNER JOIN itempermissao itemp ON itemp.fkeitem = perm.fkeitem
                        INNER JOIN item it ON it.id = itemp.fkeitem
                                              AND it.id = perm.fkeitem
                                              AND it.bitnivel = p_nivel_permissao
                                              AND itemp.fkepermissao = perm.fkepermissao
                    WHERE
                        perm.dtminativo IS NULL
                        AND perm.fkepermissao = p_fkepermissao
                        AND it.modulo = p_modulo
                        AND it.pagina = p_pagina
                        AND perm.fkeusuario_permissao = p_fkeusuario;
                 --   raise_application_error(-20002,'entrounoelse1 vpermissaogrupo=0:' || v_permissao);   

                    RETURN v_permissao;
                END IF;

            ELSE
                SELECT
                    COUNT(1)
                INTO v_permissao
                FROM
                    permissaousuario perm
                    INNER JOIN itempermissao itemp ON itemp.fkeitem = perm.fkeitem
                    INNER JOIN item it ON it.id = itemp.fkeitem
                                          AND it.id = perm.fkeitem
                                          AND it.bitnivel = p_nivel_permissao
                                          AND itemp.fkepermissao = perm.fkepermissao
                WHERE
                    perm.dtminativo IS NULL
                    AND perm.fkepermissao = p_fkepermissao
                    AND it.modulo = p_modulo
                    AND it.pagina = p_pagina
                    AND perm.fkeusuario_permissao = p_fkeusuario;
                  --  raise_application_error(-20002,'entrounoelse2 vpermissaogrupo=0:' || v_permissao);   

                RETURN v_permissao;
            END IF;
        ELSE
            v_permissao := 0;
        END IF;
    ELSE --V_NIVEL
        v_permissao := 0;
    END IF;

    RETURN v_permissao;
END;