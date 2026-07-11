Alter procedure sp_InsertEmployee
(
	@FirstName nvarchar(20),
	@Age int = null,
	@EmailId nvarchar(20) = null,
	@Salary decimal(15,2),
	@LastName nvarchar(10),
	@JoiningDate date
)
As
Begin
	Insert into tbl_EmployeeMaster (Employee_Name,Employee_Age,Employee_EmailId,
		Employee_Salary,Employee_LastName,Employee_JoiningDate)
	values(@FirstName,@Age,@EmailId,@Salary,@LastName,@JoiningDate)
End