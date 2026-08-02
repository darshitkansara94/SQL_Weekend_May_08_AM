Create procedure sp_EmployeeData
As
Begin
	Select GE.Employee_Name,GE.EmployeeId,SD.Salary_Month,SD.Salary_Amount 
				from dbo.fn_GenerateEmployeeId() as GE
				Inner join tbl_SalaryDetail as SD
					on GE.Employee_Id = SD.Employee_Id
End