User Defined Functions :
	User defined function, create by the user based on user requirement or user can modify the 
		function based on requirement.
	User defined function name can not be duplicate.
	Or function name can not start with special char or numbers.
	Space is not allowed in function name. Instead of that we can use '_'.

	-- Types of UDF :
		-- Scalar valued function:
			Scalar value function always return a single value or single type of value.
			For ex : If we need o/p for string value so we can use varchar / nvarchar. So my 
				function always return varchar/nvarchar type of value.
			
			-- Syntax :
				Create function fn_name()
				returns datatype
				As
				Begin
					return value
				End

				-- To execute the function
				Select dbo.fn_name()

			-- Example :
				Select dbo.fn_Addition()
				Select dbo.fn_AdditionWithValue(10,20,default)

				Create table tbl_Marks
				(
					Marks_Id int primary key identity(1,1),
					Maths decimal(15,2),
					SS decimal(15,2),
					Science decimal(15,2)
				)

				Select * from tbl_Marks

				Insert into tbl_Marks(Maths,SS,Science)
				values(50,45,48),(48,44,35),(15,25,44)

				Select Marks_Id,Maths,SS,Science,
				dbo.fn_AdditionWithValue(Maths,SS,Science) as Total_Marks
				from tbl_Marks

				Select * from tbl_EmployeeDetails
				alter table tbl_EmployeeDetails
				add joiningdate date
				update tbl_EmployeeDetails set
				joiningdate = '2001-01-01'
				where Employee_ID = 1011

				Select Employee_ID,Employee_Name,Employee_Salary,
				joiningdate, dbo.fn_ConvertDate(joiningdate) as Employee_JoiningDate
				from tbl_EmployeeDetails

		-- Table valued function :
			Table values function retrun a whole table as a output.
			In this function return type is always 'Table'.
			We can use this type of function when we need a complete table as a output.

			-- Syntax :
				Create function fn_name()
				Returns Table
				As
					Return SQL Statement

				-- How to execute function
				Select * from dbo.fn_name()

			-- Example :
				Select * from dbo.fn_EmployeeTable()

				Select GE.Employee_Name,GE.EmployeeId,SD.Salary_Month,SD.Salary_Amount 
				from dbo.fn_GenerateEmployeeId() as GE
				Inner join tbl_SalaryDetail as SD
					on GE.Employee_Id = SD.Employee_Id

				Create table tbl_SalaryDetail
				(
					Salary_Id int primary key identity(1,1),
					Employee_Id int,
					Salary_Month nvarchar(10),
					Salary_Amount decimal(15,2)

					Constraint fk_EmployeeId foreign key (Employee_Id)
					references tbl_EmployeeDetails(Employee_Id)
				)

				Select * from tbl_EmployeeDetails
				Select * from tbl_SalaryDetail

				Insert into tbl_SalaryDetail(Employee_Id,Salary_Month,Salary_Amount)
				Values(1003,'August',25000),(1008,'August',45000),(1003,'July',24000)

				Exec sp_EmployeeData
