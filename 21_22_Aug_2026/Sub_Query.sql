Sub Query :
	Sub query is query inside query.
	Mostly we will use this with select statement.
	The execution of subquery is quite different, First  inner query gets execute
		and then outer query execute based on inner query output.
	When we need to get output based on some select statement then we will use
		inner query.

	-- Syntax :
		-- With from
		Select column_name,column_name
		from (
			Select column_name, column_name,column_name
			from tbl_name
		) alias_name

		-- Subquery with where clause
		Select column_name,column_name from tbl_name
		where column_name = (
			Select column_name from tbl_name
		)

	-- Example :
		Select Employee_Name,Employee_LastName,Id from
		(
			Select Employee_Name,Employee_LastName,Employee_Age,Employee_Id as Id,
			from tbl_EmployeeMaster
		) emp
		Where Employee_Name = 'Dev'

		-- Find second highest salary
		Select Employee_Name,RN, Employee_Salary
		from 
		(
			Select Employee_Id,Employee_Name,Employee_Salary,
			Dense_Rank() over (order by Employee_salary desc) as RN 
			from tbl_EmployeeMaster 
		) as Emp
		where rn = 2 

		Select * from tbl_EmployeeMaster	
		
		-- With where clause
		Select * from tbl_EmployeeMaster
		Where Employee_Salary is not null

		Select * from tbl_EmployeeMaster
		Where Employee_Salary in
		(
			Select Employee_Salary from tbl_EmployeeMaster
			Where Employee_Salary is not null
		)

		-- Identify if the data is present in another table or not
		Select * from tbl_AttendList
		Select * from tbl_GuestList

		Select Guest_Number,Guest_City,Guest_Name from tbl_GuestList
		Where Guest_Number not in 
		(
			Select Guest_Number from tbl_AttendList
		)
