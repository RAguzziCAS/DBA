ALTER PROCEDURE SP_ListaRecursos
(
	@pUsuario		varchar(25),
	@pTipoPago		smallint,
	@pTipoPlanilla	smallint
)
AS
BEGIN
	SELECT 
		e.Nick			as	Empresa,
		u.Nombre		as	Recurso,
		tpl.nick		as	Tipo_Planilla,
		tp.nombre		as	Tipo_Pago,
		r.SalarioBase	as	Salario,
		r.Activo		as	Estado
	FROM Recurso as r
	Inner Join Empresa		as e	on e.Emp_Id				=	r.Emp_Id
	Inner Join Usuario		as u	on u.Usuario_Id			=	r.Usuario_Id
	Inner Join TipoPago		as tp	on tp.TipoPago_Id		=	r.TipoPago_Id
	Inner Join TipoPlanilla as tpl	on tpl.TipoPlanilla_Id	=	r.TipoPlanilla_Id
	WHERE
		u.Usuario_Id like '%' +@pUsuario + '%'	and
		tp.TipoPago_Id		=	IIF(@pTipoPago=-1,tp.TipoPago_Id,@pTipoPago)	and
		tpl.TipoPlanilla_Id	=	IIF(@pTipoPlanilla=-1,tpl.TipoPlanilla_Id,@pTipoPlanilla)
END
