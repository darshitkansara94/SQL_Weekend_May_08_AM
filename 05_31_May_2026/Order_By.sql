Order By :
	Order by use to arrange a data in ascending order or descending order.
	By default order is ascending order.
	We can define ascending order with the keyword 'asc'.
	And descending order with the keyword 'desc'.

	-- Syntax :
		Select * from tbl_name
		Order by column_name asc/desc

	-- Example :
		Select * from tbl_EmployeeMaster

		Select * from tbl_EmployeeMaster
		Order by Employee_Name

		Select * from tbl_EmployeeMaster
		Order by Employee_Name asc

		Select * from tbl_EmployeeMaster
		Order by Employee_Name desc

		Select * from tbl_EmployeeMaster Where Employee_Id in (1,3,4)
		Order by Employee_Name desc

		Select * from tbl_EmployeeMaster
		Order by Employee_Name desc
		Where Employee_Id in (1,3,4)
