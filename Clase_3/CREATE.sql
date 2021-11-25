CREATE DATABASE RH
GO

USE RH
GO

CREATE TABLE Empresa(

	Empresa_Id	smallint	not null,
	Nombre		varchar(50)	not null,
	Nick		varchar(5)	not null,

	Constraint pk_empresa Primary Key(Empresa_Id)

);
GO

CREATE TABLE Usuario(
	
	Usuario_Id	varchar(50)		not null,
	Email		varchar(100)	not null	unique,
	Nombre		varchar(50)		not null,
	Contrasena	varchar(max)	not null,

	Constraint pk_usuario Primary Key(Usuario_Id)

)
GO

CREATE TABLE Permiso(
	
	Permiso_Id	smallint	not null,
	Nombre		varchar(50)	not null,

	Constraint pk_permiso Primary Key(Permiso_Id)
);
GO

CREATE TABLE EmpresaUsuario(
	
	Empresa_Id	smallint	not null,
	Usuario_Id	varchar(50)	not null,

	Constraint fk_empresausuario Foreign Key(Empresa_Id) references Empresa(Empresa_Id),
	Constraint fk_usuarioempresa Foreign Key(Usuario_Id) references Usuario(Usuario_Id),
	Constraint pk_empresausuario Primary Key(Empresa_Id,Usuario_Id)
);
GO

CREATE TABLE PermisoUsuario(
	
	Permiso_Id	smallint	not null,
	Empresa_Id	smallint	not null,
	Usuario_Id	varchar(50)	not null,

	Constraint fk_permisousuario Foreign Key(Permiso_Id) references Permiso(Permiso_Id),
	Constraint fk_empresaasignada Foreign Key(Empresa_Id,Usuario_Id) references EmpresaUsuario(Empresa_Id,Usuario_Id),
	Constraint pk_permisousuario Primary Key(Permiso_Id,Empresa_Id,Usuario_Id)
);
GO


