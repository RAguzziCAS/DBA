USE [clase_6]
GO
INSERT [dbo].[Empresa] ([Emp_Id], [Nombre], [Nick]) VALUES (1, N'Crystal Advance Software', N'CAS')
INSERT [dbo].[Empresa] ([Emp_Id], [Nombre], [Nick]) VALUES (2, N'Crystal Advcance Academy', N'CAA')
GO
INSERT [dbo].[Usuario] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'cgarcia', N'Cesar Garcia', N'123456')
INSERT [dbo].[Usuario] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'evargas', N'Edgar Vargas', N'123456')
INSERT [dbo].[Usuario] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'jloaiza', N'Jeastin Loaiza', N'123456')
INSERT [dbo].[Usuario] ([Usuario_Id], [Nombre], [Contrasena]) VALUES (N'raguzzi', N'Robert Aguzzi', N'123456')
GO
INSERT [dbo].[TipoPago] ([TipoPago_Id], [Nombre], [Porcentaje]) VALUES (1, N'Mensual', CAST(100.00 AS Numeric(5, 2)))
INSERT [dbo].[TipoPago] ([TipoPago_Id], [Nombre], [Porcentaje]) VALUES (2, N'Quincenal', CAST(50.00 AS Numeric(5, 2)))
INSERT [dbo].[TipoPago] ([TipoPago_Id], [Nombre], [Porcentaje]) VALUES (3, N'Semanal', CAST(25.00 AS Numeric(5, 2)))
GO
INSERT [dbo].[TipoPlanilla] ([TipoPlanilla_Id], [Nombre], [Nick], [Arimetica], [Porcentaje]) VALUES (1, N'Caja Costarricense de Seguro Social', N'CCSS', N'-', CAST(10.50 AS Numeric(5, 2)))
INSERT [dbo].[TipoPlanilla] ([TipoPlanilla_Id], [Nombre], [Nick], [Arimetica], [Porcentaje]) VALUES (2, N'Servicios Profesionales', N'SP', N'+', CAST(13.00 AS Numeric(5, 2)))
GO
INSERT [dbo].[Recurso] ([Emp_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (1, N'cgarcia', 1, 2, CAST(450000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Emp_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (1, N'evargas', 2, 1, CAST(750000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Emp_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (1, N'jloaiza', 2, 1, CAST(650000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Emp_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (1, N'raguzzi', 1, 2, CAST(500000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Recurso] ([Emp_Id], [Usuario_Id], [TipoPlanilla_Id], [TipoPago_Id], [SalarioBase], [Activo]) VALUES (1, N'raguzzi', 2, 2, CAST(500000.00 AS Numeric(9, 2)), 1)
GO
