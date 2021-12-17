Alter PROCEDURE SP_Login
(
	@pUsuario_Id	VARCHAR(25),
	@pContrasena	VARCHAR(MAX)
)
AS
BEGIN
	Declare @vContrasena VARCHAR(MAX)

	Select 
		@vContrasena = Contrasena 
	From Usuario 
	Where 
		Usuario_Id = @pUsuario_Id

	IF @@ROWCOUNT = 0
	BEGIN
		RAISERROR('EL USUARIO INDICADO NO EXISTE',16,1)
	END

	Set @pContrasena = CONVERT(VARCHAR(32), HashBytes('MD5', @pContrasena), 2)

	IF @pContrasena <> @vContrasena 
	BEGIN
		RAISERROR('CREDENCIALES INVALIDAS',16,1)
	END

	Select 'Felicidades'

END