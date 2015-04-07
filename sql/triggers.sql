SET TERM ^ ;

CREATE TRIGGER HabitacionesGrupoID FOR HabitacionesGrupos
BEFORE INSERT POSITION 0
AS 
BEGIN 
    If (New.id = -1) then
   New.id = GEN_ID(HabitacionesGrupoID,1);
END^

SET TERM ; ^  

SET TERM ^ ;

CREATE TRIGGER HabitacionesEstadoID FOR HabitacionesEstados
BEFORE INSERT POSITION 0
AS 
BEGIN 
    If (New.id = -1) then
   New.id = GEN_ID(HabitacionesEstadoID,1);
END^

SET TERM ; ^  

SET TERM ^ ;

