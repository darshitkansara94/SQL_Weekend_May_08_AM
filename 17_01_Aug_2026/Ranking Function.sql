Ranking Funcions :
	Ranking function use to give rank to the values row by row.
	We have two types of rankig function:
		Row_number() :
			Row_Number function return sequential number to every row.
			If any row is deleted in between then roe_numbr funtion rearrange that number by itself.

			-- Syntax :
				Select Row_number() over(order by column_name)

			-- Example :
				Select Staff_Id,Staff_FirstName,
					Staff_LastName from tbl_staffMaster

				Select Row_number() over(order by Staff_Id desc) as Srno,Staff_Id,Staff_FirstName,
					Staff_LastName
				from tbl_StaffMaster

				Select Row_number() over(order by Staff_FirstName desc) as Srno,Staff_Id,Staff_FirstName,
					Staff_LastName
				from tbl_StaffMaster

		Dense_Rank() :
			Dense_rank is also use to give sequential number to the row but the difference is that	
				it will give same sequential number to the duplicate value that we use in order by.

			-- Syntax :
				Select Dense_rank() over(order by column_name)

			-- Example :
				Select Dense_Rank() over(order by Staff_Id desc) as Srno,Staff_Id,Staff_FirstName,
					Staff_LastName
				from tbl_StaffMaster

				Select Dense_Rank() over(order by Staff_FirstName desc) as Srno,Staff_Id,Staff_FirstName,
					Staff_LastName
				from tbl_StaffMaster

-- This is not Part of ranking functions
		Partition By :
			Partiton by use to group values and display incremental number o thaose values.
			Partition by always use with ranking functions.
			We can add multiple columns to compare a value.

			-- Syntax :
				Select ranking_function() over(partition by column_name,..colun_nameN order by column_name)
					from tbl_name

			-- Example :
				Select -- Row_number() over(order by Staff_Id desc) as Srno,Staff_Id,Staff_FirstName,
				ROW_NUMBER() over(partition by Staff_FirstName order by Staff_Id desc) as Sequenceno,
					Staff_Id,Staff_FirstName,
					Staff_LastName
				from tbl_StaffMaster

				Select * from tbl_StaffMaster