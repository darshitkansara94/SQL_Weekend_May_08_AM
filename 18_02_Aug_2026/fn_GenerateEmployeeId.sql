Alter function fn_GenerateEmployeeId()
Returns table
As
	Return (
		Select Employee_Id,Employee_Name,JoiningDate,
		CONCAT_WS('',Employee_ID,Left(Employee_Name,2),Year(JoiningDate)) as EmployeeId
		from tbl_EmployeeDetails
	)