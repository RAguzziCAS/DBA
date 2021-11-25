Select 
	[estudiante_Id]	as	Identificacion, 
	[nombre]		as	NombreCompleto, 
	[mensualidad]	as	Mensualidad, 
	[diaPago]		as	Corte
From [Estudiante]
Order By [estudiante_Id] DESC;

Select
	Mensualidad,
	Count(Estudiante_Id)	as	CantidadEstudiantes
From Estudiante
Group By Mensualidad

Select 
	e.estudiante_Id				as	Identificacion,
	e.nombre					as	Estudiante,
	e.mensualidad				as	Mensualidad_Actual,
	e.mensualidad-p.mensualidad	as	Diferencia_Mensual,
	p.pago_Id					as	Recibo,
	p.mensualidad				as	Monto,
	p.atraso					as	Dias_Atraso,
	p.extra						as	Interes,
	p.mensualidad+p.extra		as	Total,
	p.fecha						as	Fecha
From Estudiante as e
Inner Join Pago as p on
						e.estudiante_Id = p.estudiante_Id

Select 
	e.estudiante_Id				as	Identificacion,
	e.nombre					as	Estudiante,
	e.mensualidad				as	Mensualidad_Actual,
	e.mensualidad-p.mensualidad	as	Diferencia_Mensual,
	p.pago_Id					as	Recibo,
	p.mensualidad				as	Monto,
	p.atraso					as	Dias_Atraso,
	p.extra						as	Interes,
	p.mensualidad+p.extra		as	Total,
	p.fecha						as	Fecha
From Estudiante as e
Left Join Pago as p on
						e.estudiante_Id = p.estudiante_Id
where 
	p.pago_Id	is	null;

Select
	nombre,
	Count(pago_id)	,
	Count(pendiente_id)
From Estudiante as e
Left Join Pago as pa on
						pa.estudiante_Id	=	e.estudiante_Id
Left Join Pendiente as pe on
						pe.estudiante_Id	=	e.estudiante_Id
Group By nombre
