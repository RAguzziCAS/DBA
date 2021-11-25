Insert Into Empresa
Values
(2,'TacoBell','TCB'),
(1,'Fishel','FSH')
GO

Insert Into Usuario
Values
('raguzzi','raguzzi@crystal-advance.com','Robert Aguzzi','123456')
GO

Insert Into EmpresaUsuario
Values
(2,'raguzzi'),
(1,'raguzzi')
GO

Insert Into Permiso
Values
(1,'Solicitud'),
(2,'Historial'),
(3,'Aprobacion'),
(4,'Analisis')
GO

Insert Into PermisoUsuario
Values
(4,2,'raguzzi'),
(3,2,'raguzzi'),
(2,1,'raguzzi'),
(1,1,'raguzzi')
