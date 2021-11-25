CREATE DATABASE CLASE_5;
GO

USE CLASE_5;
GO

CREATE TABLE Instituto(
	
	nick	varchar(10)	not null,
	nombre	varchar(50) not null,

	Primary Key(nick)

);
go

CREATE TABLE Estudiante(

	estudiante_Id	varchar(15)	not null,
	nombre			varchar(50)	not null,
	instituto		varchar(10)	null,

	FOREIGN KEY(instituto) references Instituto(nick),
	PRIMARY KEY(estudiante_Id)
);
go