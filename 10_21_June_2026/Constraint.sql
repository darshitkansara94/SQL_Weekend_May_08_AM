Constraint :
	Constraint is setting up a rule or policy on the table or column.

	-- Types of constraint :
		-- Primary Key (PK):
			Primary key is constraint that applies on column and the value of PK
				column can not be null.
			We can not store a duplicate value in this column so PK store all the 
				value as a unique value.
			We can apply only one PK per table.
			PK always apply on column which contain some unique data.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype primary key,
					column_name datatype,
					column_name datatype,
					..
					column_name datatype
				)

			-- Example :
				Create table tbl_EmployeeSalary
				(
					EmployeeDetail_Id int primary key,
					Employee_Salary decimal(15,2),
					Employee_Id int,
					Employee_SalaryMonth int
				)

				Insert into tbl_EmployeeSalary(EmployeeDetail_Id,Employee_Salary,Employee_Id,
					Employee_SalaryMonth)
				values(1,25000,1,month(getdate()))	
				
				Insert into tbl_EmployeeSalary(EmployeeDetail_Id,Employee_Salary,Employee_Id,
					Employee_SalaryMonth)
				values(2,26000,2,month(getdate()))	
				
				Select * from tbl_EmployeeSalary

		-- Identity Key :
			Idenity key allow sql to insert value into incremental order.
			This resolves problem of PK.
			Identity key always apply on number type of columns.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype identity(starting_number,increment_by),
					column_name datatype,
					column_name datatype,
					.
					column_name datatype
				)

			-- Example :
				Create table tbl_EmployeeSalary
				(
					EmployeeDetail_Id int primary key identity(1,1),
					Employee_Salary decimal(15,2),
					Employee_Id int,
					Employee_SalaryMonth int
				)

				Insert into tbl_EmployeeSalary(Employee_Salary,Employee_Id,
					Employee_SalaryMonth)
				values(25000,1,month(getdate()))

				Insert into tbl_EmployeeSalary(Employee_Salary,Employee_Id,
					Employee_SalaryMonth)
				values(26000,2,month(getdate()))

				Select * from tbl_EmployeeSalary


		-- Foreign Key / Reference Key :
			PK of parent table is reference to the child table is 
				called as FK.
			Foreign key can have null values.
			FK can have duplicate values.

			-- Example :
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype,

					Constraint cn_name foreign key (child_table_column_name)
					references parent_tbl_name(Pk_column)
				)

				-- With existing table
				Alter table tbl_name
				Add constraint cn_name foreign key (child_table_column_name)
				references parent_tbl_name(pk_column)

			-- Example :
				Create table tbl_EmployeeSalaryDetail
				(
					EmployeeDetail_Id int primary key identity(1,1),
					Employee_Salary decimal(15,2),
					Employee_Id int,
					Employee_SalaryMonth int,

					constraint cn_fk_Employee_Id foreign key (Employee_Id)
					references tbl_EmployeeMaster(Employee_Id)
				)

				Select * from tbl_EmployeeMaster
				Select * from tbl_EmployeeSalaryDetail

				Insert into tbl_EmployeeMaster(Employee_Name,Employee_Age)
				values('Shivam',25)

				Insert into tbl_EmployeeSalaryDetail(Employee_Salary,Employee_Id,
					Employee_SalaryMonth)
				values(25000,8,6)

				Insert into tbl_EmployeeSalaryDetail(Employee_Id,
					Employee_SalaryMonth)
				values(7,6)

				Delete from tbl_EmployeeSalaryDetail
				Delete from tbl_EmployeeMaster where Employee_Id = 8

		-- Default :
			Default constraint use to store some default value when user
				does not pass anything for that column.
			We can use this constraint on multiple columns.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype default expression,
					column_name datatype,
					.
					column_name datatype
				)

				-- With existing table
				Alter table tbl_name
				Add constraint cn_name default expression for column_name

			-- Example :
				Alter table tbl_EmployeeSalaryDetail
				Add constraint cn_default_Salary default 0 for Employee_Salary

				Insert into tbl_EmployeeSalaryDetail(Employee_Id,
					Employee_SalaryMonth)
				values(7,6)

				Select * from tbl_EmployeeSalaryDetail

		-- Unique :
			Unique constraint allow user to enter unique values in the particular
				column.
			We can apply it on multiple columns.
			If duplicate value is present in the column then we can not apply 
				unique constraint on it.
			We can pass only one null value for unique constraint.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype unique,
					..
					column_name datatype
				)

				-- With exsting table
				Alter table tbl_name
				Add constraint cn_name unique(column_name)

			-- Example :
				Select * from tbl_EmployeeMaster

				Insert into tbl_EmployeeMaster(Employee_Name,EMployee_Age)
				values('Dev',26)

				Update tbl_EmployeeMaster set
					Employee_name = 'Dev'
				Where Employee_Id = 9

				Alter table tbl_EmployeeMaster
				Add constraint cn_unique_Name unique(Employee_name)

				Insert into tbl_EmployeeMaster(Employee_Name,Employee_Age)
				values('',30)

		-- Check :
			We can insert a data based on condition using check constraint.
			If we have already data that does not meet the condition then check
				constraint is not created.

			-- Syntax :
				Create table tbl_name
				(
					column_name datatype,
					column_name datatype check(condition),
					..
					column_name datatype
				)

				-- With existing table
				Alter table tbl_name
				Add constraint cn_name check(condition)

			-- Example :
				Select * from tbl_EmployeeMaster

				Alter table tbl_EmployeeMaster
				Add constraint cn_check_Age check(Employee_Age  > 18)

				Insert into tbl_EmployeeMaster(Employee_Name,Employee_Age)
				values('John',19)

		-- Not null :
			By assigning not null property we are restricting user to insert a value
				for that column.
			It isone type of validation where we restrict user to insert a value.
			By default property is null.

			-- Syntax :
				Create table tbl_Name
				(
					column_name datatype,
					column_name datatype Not null,
					...
					column_name datatype
				)

				-- With existing table
				Alter table tbl_name
				Alter column column_name datatype not null

			--Example :
				Alter table tbl_EmployeeMaster
				Alter column Employee_EmailId nvarchar(30) not null

				Update tbl_EmployeeMaster set
					EMployee_EmailId  = null
				Where Employee_Emailid is null

				Insert into tbl_EmployeeMaster(Employee_Name,Employee_Age)
				values('cena',20)

				Select * from tbl_EmployeeMaster

		-- Null :
			Allow user to insert a null value.
			By default property is null

			-- Syntax :
				Alter table tbl_name
				Alter column column_name datatype null

			-- Example :
				Alter table tbl_EmployeeMaster
				Alter column Employee_EmailId nvarchar(30) null
			

		