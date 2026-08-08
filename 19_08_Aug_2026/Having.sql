Having :
	With having we can filter data just like where clause. But we can use 
		aggregate function to filter the data.

	-- Syntax :
		Select * from tbl_name
		having Agrregate_function = expression

	-- Example :
		Select * from tbl_EmployeeSalaryDetail
		Select * from tbl_EmployeeMaster

		Insert into tbl_EmployeeSalaryDetail(Employee_Salary,Employee_Id,Employee_SalaryMonth)
		values(10000,7,7),(20000,2,7),(10000,2,6),(45000,1,7)

		Select Employee_Id,Employee_SalaryMonth,
		sum(Employee_Salary) as Total_Salary
		from tbl_EmployeeSalaryDetail
		group by Employee_Id,Employee_SalaryMonth

		Select * from tbl_EmployeeSalaryDetail

		Select concat_ws(' ',EM.Employee_Name, EM.Employee_LastName) as FullName,
		Datename(Month,DateAdd(Month,SD.Employee_SalaryMonth - 1,'19000101')) 
			as Employee_SalaryMonth,
		sum(SD.Employee_Salary) as Total_Salary
		from tbl_EmployeeSalaryDetail as SD
		Inner join tbl_EmployeeMaster as EM on
			SD.Employee_Id = EM.Employee_Id
		group by EM.Employee_Name,EM.Employee_LastName,SD.Employee_Id,
			SD.Employee_SalaryMonth
		having sum(SD.Employee_Salary) > 10000


		Select DATENAME(MONTH,DATEADD(MONTH,6,'19000101'))

		Start = January 1900 01
		Int = 7 -> (Convert into month) (Month,7,'19000101')-> '1900-01-01'

	
		

		