Select 
	* 
from Usuario
Go

Select
	*
From Empresa;
Go

Select
	*
From EmpresaUsuario
GO

Select
	e.Empresa_Id,
	e.Nombre,
	e.Nick,
	u.usuario_Id,
	u.Nombre,
	u.Email
From EmpresaUsuario as eu
Join Empresa as e on
					eu.Empresa_Id	=	e.Empresa_Id
Join Usuario as u on
					eu.Usuario_Id	=	u.Usuario_Id
Where 
	e.Empresa_Id = 2
GO

Select
	e.Nick,
	u.nombre,
	p.Nombre
From PermisoUsuario as pu
Join Empresa as e on
					pu.Empresa_Id	=	e.Empresa_Id
Join Usuario as u on
					pu.Usuario_Id	=	u.Usuario_Id
Join Permiso as p on
					pu.Permiso_Id	=	p.Permiso_Id
Where
	e.Empresa_Id	=	2	and
	u.Usuario_Id	=	'raguzzi'