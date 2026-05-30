-- Where Clause :
	Where clause use to filter out data from table.
	We can apply single or multiple column to filter data.
	We can use this where clause with Update, Select and Delete statement.

	-- Syntax :
		Select * from tbl_name
		Where column_name = expression

	-- Example :
		Select * from tbl_Employee

		Select * from tbl_Employee
		Where Employee_Id = 2

		Select * from tbl_Employee
		Where Employee_Name = 'Ajay'

		Select * from tbl_Employee
		Where Employee_Name = 'Pratik'

		-- With update statement
		Update tbl_Employee Set
			Employee_Age = 26
		Where Employee_Id = 4

		-- With delete statement
		Delete from tbl_Employee Where Employee_Id = 3

		Delete from tbl_Employee Where Employee_Name = 'harsh'

		Update tbl_Employee Set
			Employee_DOB = '2026-05-01'
		Where Employee_Id = 1

		Update tbl_Employee Set
			Employee_DOB = '2026-05-30'
		Where Employee_Id = 4

