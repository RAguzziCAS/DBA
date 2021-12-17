ALTER PROCEDURE SP_Generar_Planilla
(
	@pFecha		date,
	@pAnio		smallint,
	@pMes		varchar(25),
	@pTipoPago	smallint	
)
AS
BEGIN
	Select 
		@pFecha			as	Fecha_Generada,
		@pAnio			as	Año,
		@pMes			as	Mes,
		e.Nick			as	Empresa,
		u.Nombre		as	Nombre,
		tp.Nick			as	TipoPlanilla,
		tpa.Nombre		as	TipoPago,
		tpa.Porcentaje	as	Porcentaje_Pago,
		r.SalarioBase	as	SalarioBase,
		IIF(tp.Arimetica='-',tp.Porcentaje,0)	as	Deducciones,
		IIF(tp.Arimetica='+',tp.Porcentaje,0)	as	Impuestos,
		(r.SalarioBase * tpa.Porcentaje/100) * (1 + IIF(tp.Arimetica='+',tp.Porcentaje/100,0) - IIF(tp.Arimetica='-',tp.Porcentaje/100,0)) 	as	SalarioPago
	From Recurso as r
	Inner Join Empresa as e on
							e.Emp_Id = r.Emp_Id
	Inner Join Usuario as u on 
							u.Usuario_Id = r.Usuario_Id
	Inner Join TipoPlanilla as tp on
							tp.TipoPlanilla_Id	=	r.TipoPlanilla_Id
	Inner Join TipoPago as tpa	on
							tpa.TipoPago_Id	=	r.TipoPago_Id
	WHERE 
		R.TipoPago_Id = @pTipoPago
END