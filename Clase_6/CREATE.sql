create database clase_6;
go
use clase_6
go

create table Empresa(
	
	Emp_Id		smallint	not null,
	Nombre		varchar(25)	not null,
	Nick		varchar(10)	not null,

	PRIMARY KEY (Emp_Id)
)
go

create table Usuario(
	
	Usuario_Id	varchar(25)		not null,
	Nombre		varchar(25)		not null,
	Contrasena	varchar(max)	not null
	
	PRIMARY KEY(Usuario_Id)

)
go

Create table TipoPago(

	TipoPago_Id	smallint		not null,
	Nombre		varchar(25)		not null,
	Porcentaje	numeric(5,2)	not null,

	PRIMARY KEY(TipoPago_Id)

)
GO

Create table TipoPlanilla(

	TipoPlanilla_Id	smallint		not null,
	Nombre			varchar(50)		not null,
	Nick			varchar(10)		not null,
	Arimetica		varchar(1)		not null,
	Porcentaje		numeric(5,2)	not null,

	PRIMARY KEY(TipoPlanilla_Id)

)
GO

create table Recurso(

	Emp_Id			smallint		not null,
	Usuario_Id		varchar(25)		not null,
	TipoPlanilla_Id	smallint		not null,
	TipoPago_Id		smallint		not null,
	SalarioBase		numeric(9,2)	not null,
	Activo			bit				not null,

	FOREIGN KEY(Emp_Id) REFERENCES EMPRESA(Emp_Id),
	FOREIGN KEY(Usuario_Id) REFERENCES USUARIO(Usuario_Id),
	FOREIGN KEY(TipoPlanilla_Id) REFERENCES TipoPlanilla(TipoPlanilla_Id),
	FOREIGN KEY(TipoPago_Id) REFERENCES TipoPago(TipoPago_Id),
	PRIMARY KEY(Emp_Id,Usuario_Id,TipoPlanilla_Id)

)
GO