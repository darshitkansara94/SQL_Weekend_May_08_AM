CRUD Operation :
	C - Create
	R - Read
	U - Update
	D - Delete
When we need to insert, read, update or delete data from the table.

	-- Create (Insert) :
		Insert a new record / new row into the table.
		when we insert a data then make sure that no of rows and no of column is same.

		-- Syntax :
			Insert into tbl_name(column_name1,column_name2,column_name3,...,column_nameN)
			values(expression1,expression2,expression3,...,expressionN)

			-- Multiple row insert
			Insert into tbl_name(column_name1,column_name2,column_name3,...,column_nameN)
			values(expression1,expression2,expression3,...,expressionN),
					(expression1,expression2,expression3,...,expressionN),
					(expression1,expression2,expression3,...,expressionN)

		-- Example :
			Insert into tbl_Employee(Employee_Id,Employee_Name,Employee_Age)
			values(1,'Dev',25)

			Select * from tbl_Employee

			-- Error statement
			Insert into tbl_Employee(Employee_Id,Employee_Name,Employee_Age,Employee_EmailId)
			values(2,'Harsh',26)

			-- Error statement
			Insert into tbl_Employee(Employee_Id,Employee_Name,Employee_Age)
			values(2,'Harsh',26,'abc@gmail.com')

			-- Insert multiple rows using single execution
			Insert into tbl_Employee(Employee_Id,Employee_Name)
			values (2,'Harsh'),(3,'Hardik'),(4,'Ajay')

			-- Error statement
			Insert into tbl_Employee(Employee_Id,Employee_Name)
			values('Hemang','Dave')

	-- Read (Select) :
		Display or fetch recod from the table.

		-- Syntax :
			Select * from tbl_name

			Select column_name1,column_name2,..,column_nameN from tbl_name

		-- Example :
			Select * from tbl_Employee

			Select Employee_Name,Employee_EmailId,Employee_Age,Employee_Id
			from tbl_Employee

	-- Update :
		Update statement use to modify existing records.
		We can update a multiple records or single record or a single column value.

		-- Syntax :
			Update tbl_name set
				column_name = expression,
				column_name = expression,
				.
				.
				column_nameN = expressino

		-- Example :
			Update tbl_Employee Set
				Employee_DOB = '2025-05-03'
				
			Select * from tbl_Employee

			Update tbl_Employee Set
				Employee_DOB = '2025-05-01',
				Employee_Age = 25


	-- Delete :
		Delete statement use to remove all / single the record from table.
		By apply delete statement, table structure is not affected.

		-- Syntax :
			Delete from tbl_name

		-- Example :
			Delete from tbl_Employee

			Select * from tbl_EMployee
		
		


