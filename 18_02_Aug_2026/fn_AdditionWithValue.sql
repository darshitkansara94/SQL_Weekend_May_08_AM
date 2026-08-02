Alter function fn_AdditionWithValue
(
	@Value1 int,
	@Value2 int,
	@Value3 int = 0
)
Returns int
As
Begin
	return @value1 + @value2 + @value3
End