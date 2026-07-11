Store Procedure (SP) :
	SP is a block of code which allow us to reuse the same code multiple time within
		the same DB.
	By writing SP we can avoid code dupliction.Which direct or indirect affect the
		performance of data.
	SP is saved inside DB when we execute it.
	Sp supports parmaeter.

	-- Parameter :
		Parameter is use to transfer a value from application to SP.
		Param alwasy start with the @ symbol.
		By default property of praram is not null.
		Multiple param can be declare by using comma.

		-- Syntax :
			@param_name datatype,
			@param_name datatype

	-- Syntax :
		-- Default SP
		Create / Alter procedure sp_name
		As
		Begin
			-- SQL Statement
		End

		-- Parameterized SP
		Create /Alter procedure sp_name
		(
			-- parameters
		)
		As
		Begin
			-- SQl Statement
		End

		-- To execute SP
			Exec sp_name

	-- Example :
		Select * from tbl_EmployeeMaster

		Exec sp_SelectEmployeeData
		
		Select * from tbl_EmployeeMaster Where employee_Id = 3

		Exec sp_SelectEmployeeById 2
		Exec sp_SelectEmployeeById 3

		-------- Insert data
		Exec sp_InsertEmployee
			'Darshit',25,'abc@gmail.com',25000,'Kansara','2026-07-11 09:23:08.667'
			
		-- Error statement
		--Exec sp_InsertEmployee
		--	'Darshit',25,25000,'Kansara','2026-07-11 09:23:08.667'

		Exec sp_InsertEmployee
			@FirstName = 'Kishan',
			@LastName = 'Patel',
			@Age = 25,
			@Salary = 26000,			
			@JoiningDate = '2026-07-11 09:23:08.667'

-- Assignment :
	Create a SP which perform Insert, Update, delete and select.
	Select statement can be perform by particular Id or without Id.
	But the thing is at a time only one SQL statement should execute based on
		user input.
	Ex : if user say insert then only insert statement execute.
	