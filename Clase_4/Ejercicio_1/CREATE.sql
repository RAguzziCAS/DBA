Create Database Clase_4_1;
go

use Clase_4_1;
go

Create Table Estudiante(

	estudiante_Id	varchar(25)		not null,
	nombre			varchar(100)	not null,
	mensualidad		numeric(9,2)	not null,
	diaPago			smallint		not null,

	Constraint pk_estudiante primary key(estudiante_Id)
);
go

Create Table Pago(

	pago_Id			smallint		not null,
	estudiante_Id	varchar(25)		not null,
	atraso			smallint		not null,	
	mensualidad		numeric(9,2)	not null,
	extra			numeric(9,2)	not null,
	fecha			datetime		not null,

	Constraint fk_estudiante  foreign key(estudiante_Id) references Estudiante(estudiante_Id),
	Constraint pk_pago primary key(pago_Id,estudiante_Id)
);
go

Create Table Pendiente(

	pendiente_Id	smallint		not null,
	estudiante_Id	varchar(25)		not null,
	atraso			smallint		not null,	
	mensualidad		numeric(9,2)	not null,
	extra			numeric(9,2)	not null,	
	fecha			datetime		not null,			

	Constraint fk_estudiantePendiente  foreign key(estudiante_Id) references Estudiante(estudiante_Id),
	Constraint pk_pendiente primary key(pendiente_Id,estudiante_Id)
);
go