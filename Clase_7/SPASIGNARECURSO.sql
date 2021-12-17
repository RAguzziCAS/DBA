ALTER PROCEDURE SP_Asigna_Recurso
(
	@pEmp_Id			smallint, 
	@pUsuario_Id		varchar(25), 
	@pTipoPlanilla_Id	smallint, 
	@pTipoPago_Id		smallint, 
	@pSalarioBase		numeric(9,2), 
	@pActivo			bit
)
AS
BEGIN
	BEGIN TRY
		IF NOT EXISTS(SELECT * FROM  Empresa Where Emp_Id = @pEmp_Id)
		BEGIN
			RAISERROR('Error, esa empresa no existe',16,1)
		END

		IF NOT EXISTS(SELECT * FROM  TipoPlanilla Where TipoPlanilla_Id = @pTipoPlanilla_Id)
		BEGIN
			RAISERROR('Error, ese tipo planilla no existe',16,1)
		END

		IF NOT EXISTS(SELECT * FROM  TipoPago Where TipoPago_Id = @pTipoPago_Id)
		BEGIN
			RAISERROR('Error, ese tipo pago no existe',16,1)
		END

		IF EXISTS(SELECT * FROM  Recurso Where Emp_Id = @pEmp_Id and Usuario_Id = @pUsuario_Id and TipoPlanilla_Id=@pTipoPlanilla_Id)
		BEGIN
			RAISERROR('Error, ese recurso ya  ha sido asignado con ese tipo de planilla en esta empresa',16,1)
		END

		INSERT INTO Recurso
		(
			[Emp_Id], 
			[Usuario_Id], 
			[TipoPlanilla_Id], 
			[TipoPago_Id], 
			[SalarioBase], 
			[Activo]
		)
		VALUES
		(
			@pEmp_Id,
			@pUsuario_Id,
			@pTipoPlanilla_Id,
			@pTipoPago_Id,
			@pSalarioBase,
			@pActivo
		)
	END TRY
	BEGIN CATCH
		SELECT ERROR_MESSAGE() AS ErrorMessage
	END CATCH
END