Cursor :
	Cursor is a object in sql which use to fetch value row by row.
	When we read value row by row and the data is large then it will affect the
		performance of the fetching data.
	Fetch statement is responsible to get next row value .
	When we need to perform some operation like mathemetical or any complex logic
		then we can use cursor.
	To release a memory we need to deallocate and remove that sursor from memory
		to freeup some space.

	-- Syntax :
		Declare cursor_name cursor for
			Select column_name1,column_name2 from tbl_name

			Open cursor_name
				Fetch next from cursor_name into variable_name1,variable_name2
			Close cursor_name
		Deallocate cursor_name

	-- Example :
		Select * from tbl_EmployeeMaster

		Declare @Name nvarchar(20)
		Declare @Age int

		Declare cr_EmployeeName cursor for
			Select Employee_Name,Employee_Age from tbl_EmployeeMaster

			Open cr_EmployeeName
				Fetch next from cr_EmployeeName into @Name,@Age
				print(@Name + Cast(@Age as nvarchar(5)))

			Close cr_EmployeeName
		Deallocate cr_EmployeeName

		-- To fetch all the values from table
		Declare @Emp_Name nvarchar(20)
		Declare @Emp_Email nvarchar(20)

		Declare cr_AllEmployee cursor for
			Select Employee_Name, Employee_EmailId from tbl_EmployeeMaster

			Open cr_AllEmployee
				Fetch next from cr_AllEmployee into @Emp_Name,@Emp_Email
				print(concat_ws('-',@Emp_Name,@Emp_Email))

				while @@FETCH_STATUS = 0
				Begin
					Fetch next from cr_AllEmployee into @Emp_Name,@Emp_Email
					print(concat_ws('-',@Emp_Name,@Emp_Email))
				End

			Close cr_AllEmployee
		Deallocate cr_AllEmployee
