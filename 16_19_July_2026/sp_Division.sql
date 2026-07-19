Alter proc sp_Division
(
	@value1 int,
	@value2 int
)
As
Begin
	Begin try
		select @value1/@value2
	End try
	Begin catch
		Select 'Error occured'
	End catch
End


