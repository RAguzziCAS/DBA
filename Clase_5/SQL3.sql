Select 
	e.estudiante_Id,
	e.nombre,
	i.nick,
	i.nombre
From Estudiante as e
INNER JOIN Instituto AS i on
						e.instituto=i.nick
Order By e.nombre asc

Select 
	e.estudiante_Id,
	e.nombre,
	i.nick,
	i.nombre
From Estudiante as e
LEFT JOIN Instituto AS i on
						e.instituto=i.nick
Order By e.nombre asc

Select 
	i.nick,
	i.nombre,
	e.estudiante_Id,
	e.nombre
From Instituto AS i 
left JOIN Estudiante as e on
						e.instituto=i.nick
Order By e.nombre asc

Select
	e.instituto,
	count(e.estudiante_Id) as Cantidad_Estudiantes
From Estudiante as e
Group by e.instituto

Select
	e.instituto,
	STRING_AGG(e.nombre,',')
from Estudiante as e
Group by e.instituto

Select 
	COALESCE(i.nick,'IND')	as Nick,
	COALESCE(i.nombre,'Individual')	as Nombre,
	STRING_AGG(e.nombre,',') AS Estudiantes,
	count(e.estudiante_Id) as Cantidad_Estudiantes
From Estudiante as e
LEFT JOIN Instituto AS i on
						e.instituto=i.nick
Group by i.nick,i.nombre