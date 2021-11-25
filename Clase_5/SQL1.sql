select 
	e.estudiante_Id,
	e.nombre,
	e.mensualidad	as	Mensualidad_Actual,
	p.fecha,
	p.mensualidad,
	p.atraso,
	p.extra 
from pago as p
right Join Estudiante as e on
						p.estudiante_Id	=e.estudiante_Id

Select
	e.estudiante_Id,
	e.nombre,
	e.mensualidad	as	Mensualidad_Actual,
	p.fecha,
	p.mensualidad,
	p.atraso,
	p.extra,
	pe.fecha,
	pe.mensualidad,
	pe.atraso
From Estudiante as e
Left Join Pago as p on
					e.estudiante_Id=p.estudiante_Id
Left Join Pendiente as pe on
					e.estudiante_Id=pe.estudiante_Id

