Alter procedure sp_SelectEmployeeById
(
	@EmployeeId int = null
)
AS
Begin
	If @EmployeeId is null
	Begin
		-- Select * from tbl_EmployeeMaster
		Exec sp_SelectEmployeeData
	End
	Else
	Begin
		Select * from tbl_EmployeeMaster
		Where Employee_Id = @EmployeeId
	End
End