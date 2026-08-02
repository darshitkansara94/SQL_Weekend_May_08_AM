Alter function fn_ConvertDate
(
	@Date date
)
Returns nvarchar(20)
As
Begin
	Return convert(nvarchar(20),@Date,107)
End