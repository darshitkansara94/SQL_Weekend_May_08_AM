Alter function fn_EmployeeTable()
Returns Table
As
	Return (
		Select Employee_ID,Employee_Name,
		Employee_Contact,Employee_Salary,
		dbo.fn_ConvertDate(JoiningDate) as Employee_JoiningDate
		from tbl_EmployeeDetails
	)