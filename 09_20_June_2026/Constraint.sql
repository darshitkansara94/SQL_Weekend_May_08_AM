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

		-- Unique
		-- Check
		-- Null
		-- Not null