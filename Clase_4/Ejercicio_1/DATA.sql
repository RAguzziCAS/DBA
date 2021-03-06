USE [Clase_4_1]
GO
INSERT [dbo].[Estudiante] ([estudiante_Id], [nombre], [mensualidad], [diaPago]) VALUES (N'1', N'Robert', CAST(15000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Estudiante] ([estudiante_Id], [nombre], [mensualidad], [diaPago]) VALUES (N'2', N'Juan', CAST(15000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Estudiante] ([estudiante_Id], [nombre], [mensualidad], [diaPago]) VALUES (N'3', N'Carmen', CAST(15000.00 AS Numeric(9, 2)), 1)
INSERT [dbo].[Estudiante] ([estudiante_Id], [nombre], [mensualidad], [diaPago]) VALUES (N'4', N'Karen', CAST(15000.00 AS Numeric(9, 2)), 1)
GO
INSERT [dbo].[Pago] ([pago_Id], [estudiante_Id], [atraso], [mensualidad], [extra], [fecha]) VALUES (1, N'1', 0, CAST(15000.00 AS Numeric(9, 2)), CAST(0.00 AS Numeric(9, 2)), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Pago] ([pago_Id], [estudiante_Id], [atraso], [mensualidad], [extra], [fecha]) VALUES (1, N'2', 0, CAST(15000.00 AS Numeric(9, 2)), CAST(0.00 AS Numeric(9, 2)), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Pago] ([pago_Id], [estudiante_Id], [atraso], [mensualidad], [extra], [fecha]) VALUES (1, N'3', 45, CAST(15000.00 AS Numeric(9, 2)), CAST(6750.00 AS Numeric(9, 2)), CAST(N'2021-02-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Pago] ([pago_Id], [estudiante_Id], [atraso], [mensualidad], [extra], [fecha]) VALUES (2, N'1', 15, CAST(15000.00 AS Numeric(9, 2)), CAST(2250.00 AS Numeric(9, 2)), CAST(N'2021-02-15T00:00:00.000' AS DateTime))
INSERT [dbo].[Pago] ([pago_Id], [estudiante_Id], [atraso], [mensualidad], [extra], [fecha]) VALUES (2, N'3', 15, CAST(15000.00 AS Numeric(9, 2)), CAST(2250.00 AS Numeric(9, 2)), CAST(N'2021-02-15T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[Pendiente] ([pendiente_Id], [estudiante_Id], [atraso], [mensualidad], [extra], [fecha]) VALUES (1, N'4', 59, CAST(15000.00 AS Numeric(9, 2)), CAST(8850.00 AS Numeric(9, 2)), CAST(N'2021-01-01T00:00:00.000' AS DateTime))
INSERT [dbo].[Pendiente] ([pendiente_Id], [estudiante_Id], [atraso], [mensualidad], [extra], [fecha]) VALUES (2, N'4', 28, CAST(15000.00 AS Numeric(9, 2)), CAST(4200.00 AS Numeric(9, 2)), CAST(N'2021-02-01T00:00:00.000' AS DateTime))
GO
