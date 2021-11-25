/*
	"CRUD" -> Mantenimiento
	C-> Create
	R-> Read
	U-> Update
	D-> Delete

	"Objetos" -> CRUD
	C -> Create
	U -> Alter
	D -> Drop

	"Informacion" -> CRUD
	C -> Insert
	R -> Select 
	U -> Update
	D -> Delete
*/

Create Database Clase_1;

Use Clase_1

Create Table Usuario(

	usuario_Id		varchar(50)	not null,--Correo example@hotmail.com
	contrasena		varchar(50)	not null,
	nombre			varchar(50)	not null,
	primerApellido	varchar(50)	not null,
	segundoApellido	varchar(50)	not null,

	Constraint pk_usuario Primary Key(usuario_Id)
);

Insert Into Usuario(
	usuario_Id,
	contrasena,
	nombre,
	primerApellido,
	segundoApellido 
)Values(
	'44444444',
	'123456',
	'Kevin',
	'Aguzzi',
	'Amador'
);

Select * From Usuario

Update Usuario 
set 
	contrasena = 'daguzzi',
	nombre = 'Daniel'
Where 
	usuario_Id = '118640285'

Begin Tran
	Delete Usuario
	Where 
		usuario_Id = '118640285'
Rollback
Commit

