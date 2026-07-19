Alter procedure sp_Concat
(
	@value1 nvarchar(20),
	@value2 int
)
As
Begin
	Begin try
		Select @value1 + @value2
	End try
	Begin catch
		Select 'Concat is not possible'
	End catch
End