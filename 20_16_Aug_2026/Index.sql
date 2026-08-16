Index :
	Index is use to fetch data more accurate and fast through select statement.
	We can create a multiple index on single table.
	Index name must be unique in the same DB.
	When we create multiple index it can slow down Insert, update and delete
		execution of table.
	
	-- Types of index :
		Clustered index :
			Clustered index we can create only one index per table.
			By default this type of index is created with the PK column.
			If we need to create another clustered index we need to drop the 
				existing one first.

			-- Syntax :
				Create clustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create clustered index idx_attendNumber on
				tbl_AttendList(Attend_Number)

		Non-clustered index :
			We can create multiple index on single table.
			Index name must be different.
			We need to create a index on column which is used most for filter the 
				records.

			-- Syntax :
				Create nonclustered index idx_name on
				tbl_name(column_name)

			-- Example :
				Create nonclustered index idx_FamilyMember on
				[dbo].[tbl_AttendList]([Family_Member])

				Select * from tbl_AttendList

			Unique index :
				Unique index allow user to store unique record for the column and 
					also it will create an index for that column too.
				If we have a duplicate data for the column then we can not create 
					unique index. First we need to remove all the duplicate data.

				-- Syntax :
					Create unique nonclustered index idx_name on
					tbl_name(column_name)

				-- Example :
					Select * from tbl_EmployeeSelf

					insert into tbl_EmployeeSelf (Employee_Name,Employee_Salary,Manager_Id)
					values('Abhimanyu',15200,2)

					Update tbl_EmployeeSelf set
						Employee_name = 'Jay'
					Where Employee_Id = 1002

					Create unique nonclustered index idx_unq_Name on
					tbl_EmployeeSelf(Employee_name)

			Filter index :
				Filter index allow us to filter data through index.
				This concept use most with unique index.

				-- Syntax :
					Create unique nonclustered index idx_name on
					tbl_name(column_name)

				-- Example :
					Select * from tbl_GuestList
					Where Is_Deleted = 1

					Create unique nonclustered index idx_uniq_filter_name on
					tbl_GuestList(Guest_Name)
					Where Is_Deleted = 1

					Insert into tbl_GuestList(Guest_Name,Guest_City,Is_Deleted)
					values('Parth','Vadodara',1)

					update tbl_GuestList set
						Is_Deleted = 0
					Where Guest_Number = 1008

