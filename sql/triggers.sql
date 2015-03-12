SET TERM ^ ;

CREATE TRIGGER HabitacionesGrupoID FOR HabitacionesGrupo
BEFORE INSERT POSITION 0
AS 
BEGIN 
    If (New.id = -1) then
   New.id = GEN_ID(HabitacionesGrupoID,1);
END^

SET TERM ; ^  

SET TERM ^ ;

CREATE TRIGGER HabitacionesEstadoID FOR HabitacionesEstado
BEFORE INSERT POSITION 0
AS 
BEGIN 
    If (New.id = -1) then
   New.id = GEN_ID(HabitacionesEstadoID,1);
END^

SET TERM ; ^  

SET TERM ^ ;

