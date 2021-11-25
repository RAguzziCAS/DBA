CREATE DATABASE RH
GO

USE RH
GO

CREATE TABLE Empresa(
	
	empresa_Id	smallint	not null,
	nombre		varchar(50) not null,
	acronimo	varchar(5)	not null	unique,

	CONSTRAINT pk_empresa PRIMARY KEY(empresa_Id)

);
GO

CREATE TABLE Recurso(
	
	recurso_Id	varchar(15)	not null,
	nombre		varchar(50) not null,
	edad		smallint	not null,

	CONSTRAINT pk_recurso PRIMARY KEY(recurso_Id)

);
GO

CREATE TABLE Tipo(
	
	tipo_Id		smallint	not null,
	nombre		varchar(50) not null

	CONSTRAINT pk_tipo PRIMARY KEY(tipo_Id)

);
go

CREATE TABLE Planilla(
	
	empresa_Id	smallint	not null,
	recurso_Id	varchar(15)	not null,
	tipo_Id		smallint	not null,
	salario		decimal		not null,

	CONSTRAINT fk_planillaEmpresa	FOREIGN KEY(empresa_Id)		REFERENCES Empresa(empresa_Id),
	CONSTRAINT fk_planillaRecurso	FOREIGN KEY(recurso_Id)		REFERENCES Recurso(recurso_Id),
	CONSTRAINT fk_planillaTipo		FOREIGN KEY(tipo_Id)		REFERENCES Tipo(tipo_Id),
	CONSTRAINT pk_planilla			PRIMARY KEY(empresa_Id,recurso_Id,tipo_Id)
);