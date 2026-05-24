Table :
	Table is collection of rows and columns.
	Where every rows contain data.
	Table name should not start with Special char or numbers. It should always start with 
		alphabets.
	Space is not allowed in table name.
	Table name must be unique with in the DB.
	Table name must have prefix 'tbl_'
		Ex : Student = tbl_Student

	Column :
		Verticle line in table.
		Column defines what type of data we will store in the cells.
		Column name should start with alphabets. 
		Space is not allowed in column name
		We can not add column with the same name with in the same table.
		Column name sould start with the table name.
			Ex :
				My table name is tbl_Student
				 So my column name is :
					Student_Name
				My table name is tbl_Staff
				So column name is :
					Staff_Name

	Datatypes :
		Datatype is use to restrict user to add data according to the define type.

		Types of datatype :
			String : 
				String is collection of Alphabets, numbers and special char.
				String always define with sigle quote ('').
				Ex :
					'abc123@' = string
					'123' = string
					'abc@'
					'abc123'

				-- Types of datatype for string :
					varchar :
						varchar support single scripted language.
						It support only english language.

						-- Syntax :
							varchar(length)

						-- Example :
							I need to store first name
								varchar(13)

								varchar(max)

								'abc'
								'abcdefgh'
								
					nvarchar :
						nvarchar is similar to the varchar datatype.
						Only differece is nvarchar is multiscripted datatype that
							means it can store data with multiple language.

						-- Syntax :
							nvarchar(length)

						-- Example :
							nvarchar(13)

							nvarchar(max)

					char :
						Char is vary similar ot the varchar and nvarchar.
						The major diff is it will consume all the char that is
							defined.
						We can use this datatype where out lenght is fixed.

						-- Syntax :
							char(length)

						-- Example :
							char(6)

							'abc   '
							'abcd  '

			Numbers :
				We can store 0-9 values only.
				In the number type of data we do not need to use single quote.
				Ex : 123

				Types of number datatype :
					int :
						int use to store numbers only.
						It has a fixed length so we do not need to define it.
						Int can store max 8 char of length

						-- Syntax :
							int

						-- Example :
							int

					bigint :
						bigint use to store large numbers.
						It usually use when we have a column value which come from
							some calculation.

						-- Syntax :
							bigint

						-- Example :
							bigint

					decimal :
						Decimal datatype store a value that containt point.
						Ex : 10.25

						-- Syntax :
							decimal(total_length,lenght_after_point)

							total_length = Total length of number including point.
							lenght_after_point = Define a length of number after 
								point.

						-- Example :
							decimal(18,2) = 10.25
							decimal(18,3) = 10.250

			Date And Time :
				Store date and time.
				SQL has default format which is 'yyyy-mm-dd HH:MM:ss:ms'

				-- Types of datatype in Date and Time :
					Date :
						This datatype store only date with the format 'yyyy-mm-dd'.
						We can not modify this date format.

						-- Syntax :	
							Date

						-- Example :
							Date

					Time :
						Time use to store only time.
						By default format of storing a time is 'HH:MM:ss:ms'

						-- Syntax :
							Time

						-- Example :
							time

					Datetime :
						When  i need to store date and time together then i will use
							datetime datatype.

						-- Syntax :
							datetime

						-- Example :
							datetime

			Bit :
				Bit use to store a decimal type of value.
				It always store 0 or 1.
				Length of the datatype is predefine we can not modify that length.

				-- Syntax :
					bit

				-- Example :
					bit

		-- Table Syntax :
			Create table tbl_name
			(
				column_name datatype,
				column_name datatype,
				.
				.
				.
				column_nameN datatype
			)

		-- Example :
			Use db_stones

			Create table tbl_Employee
			(
				Employee_Id int,
				Employee_Name varchar(25),
				Employee_Age int,
				Employee_DOB date
			)

		-- Existing table modification:
			When we have existing table and if we want to modify the columns.
				like adding a new one, rename existing column or remove column.
			We can perform this operation without affecting any data.

			-- Add new column :
				Add a new column into existing table.

				-- Syntax :
					Alter table tbl_name
					Add column_name datatype

				-- Example :
					Alter table tbl_Employee
					Add Employee_Email varchar(20)

			-- Modify column :
				With this i can modify the datatype and change the property of the
					column.
				I can not rename the column name using this syntax.

				-- Syntax :
					Alter table tbl_name
					Alter column column_name datatype

				-- Example :
					Alter table tbl_Employee
					Alter column Employee_Email nvarchar(15)

			-- Delete column :
				Delete existing column without affecting other data.
				Once we delete a column we can not recover that column back.

				-- Syntax :
					Alter table tbl_name
					Drop column column_name

				-- Example :
					Alter table tbl_Employee
					Drop column Employee_DOB

		-- Rename table :
			Rename table name without affecting data.
			Once we rename the table we need to modify the references as well 
				otherwise it will throw error.

			-- Syntax :
				Exec sp_rename 'old_tablename','new_tablename'

			-- Example :
				exec sp_rename '[dbo].[tbl_Employee]','tbl_EmployeeMaster'

		-- Rename column column name :
			Rename column name without affecting data.
			Once we rename the table we need to modify the references as well 
				otherwise it will throw error.

			-- Syntax :
				exec sp_rename 'tbl_name.column_name','new_column_name','column'

			-- Example :
				Exec sp_rename '[dbo].[tbl_EmployeeMaster].[Employee_Email]',
					'Employee_EmailId','column'

	-- Delete table :
		Remove existing table from DB.
		Once we delete a table we do not have option to recover it back.
		And by deleting a table we also delete a data of that table.

		-- Syntax :
			Drop table tbl_name

		-- Example :
			Drop table tbl_Employee_1



			
		