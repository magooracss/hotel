CREATE TABLE Habitaciones (
	  id		"guid"  NOT NULL PRIMARY KEY
	, grupo_id	int default 0
	, nombre	varchar(50)
	, camasSimples	int default 0
	, camasDobles	int default 0
	, precio	float default 0
	, estado_id	int default 0
	, bVisible	smallint default 1
);

CREATE TABLE HabitacionesGrupos (
	  id		int  NOT NULL PRIMARY KEY
	, grupo		varchar(50)
	, bVisible	smallint default 1
);

CREATE TABLE HabitacionesEstados (
	  id		int  NOT NULL PRIMARY KEY
	, estado	varchar(50)
	, bVisible	smallint default 1
);

