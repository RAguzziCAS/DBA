ALTER PROCEDURE SP_Inserta_Usuario
(
	@pUsuario_Id	VARCHAR(25),
	@pNombre		VARCHAR(25),
	@pContrasena	VARCHAR(MAX)
)
AS
Begin
	INSERT INTO Usuario
	(
		[Usuario_Id], 
		[Nombre], 
		[Contrasena]
	)
	VALUES
	(
		@pUsuario_Id,	
		@pNombre,
		CONVERT(VARCHAR(32), HashBytes('MD5', @pContrasena), 2)
	);
End