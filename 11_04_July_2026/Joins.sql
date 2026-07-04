Joins :
	Joins is a sql statement that combines two or more table and return as a 
		single output.

	-- Types of joins :
		-- Inner Join :
			Inner join return common data between all the tables.
			We can have two or more than two tables with the inner join.

			-- Syntax :
				Select * from tbl_nameA
				Inner join tbl_nameB On
					tbl_nameA.column_name = tbl_nameB.column_name

			-- Example :
				Select * from tbl_guestlist
				Select * from tbl_AttendList

				Select gl.Guest_Name,al.Family_Member,al.Attend_Gift
				from tbl_guestlist as gl
				Inner join tbl_AttendList as al On
					gl.Guest_Number = al.Guest_Number

				-- With Where cluase
				Select gl.Guest_Name,al.Family_Member,al.Attend_Gift
				from tbl_guestlist as gl
				Inner join tbl_AttendList as al On
					gl.Guest_Number = al.Guest_Number
				Where Attend_Gift is not null
					And Attend_Gift like 'cover%'

		-- Left Join :
			Left join return all the data from left table and common data
				from bth te tables.
			For ex. We have two table tbl_A and tbl_B. Whichever table comes 
				first in select statement that table consider as left table and 
				tbl_B is consider as right table.
			When we write a table in the sql statement then sequence of table are matter.

			-- Syntax :
				Select * from tbl_nameA
				Left join tbl_nameB on
					tbl_nameA.column_name = tbl_nameB.column_name

			-- Example :
				Select * from tbl_guestlist
				Select * from tbl_AttendList

				Select gl.Guest_Name,Isnull(Al.Family_Member,0) as FamilyMember,
				Isnull(al.Attend_Gift,'Not given') as Gift
				from tbl_guestlist as gl
				Left join tbl_AttendList as al ON
					gl.Guest_Number = al.Guest_Number

		-- Right Join :
			Return all the data from right table and common data between both the tables.
			When we write a table in the sql statement then sequence of table are matter.

			-- Syntax :
				Select * from tbl_nameA
				Right join tbl_nameB On
					tbl_nameA.column_name = tbl_nameB.column_name

			-- Example :
				Select gl.Guest_Name,Isnull(Al.Family_Member,0) as FamilyMember,
				Isnull(al.Attend_Gift,'Not given') as Gift
				from tbl_guestlist as gl
				Right join tbl_AttendList as al ON
					gl.Guest_Number = al.Guest_Number 

				---- Flip the tables
				Select gl.Guest_Name,Isnull(Al.Family_Member,0) as FamilyMember,
				Isnull(al.Attend_Gift,'Not given') as Gift
				from tbl_AttendList as al
				Right join tbl_guestlist as gl ON
					al.Guest_Number  = gl.Guest_Number

		-- Self Join :
			Self join is use to apply join with itself. That means we have only one table and 
				that table aply join with itself.
			
			-- Syntax :
				Select * from tbl_nameA as alias_name, tbl_nameA as alias_name

			-- Example
				Select 
					tbl_b.Employee_Name as Employee_Name,
					tbl_B.EMployee_Salary as Employee_Salary,
					tbl_A.Employee_Name as Manager_Name,
					tbl_A.EMployee_Salary as Manager_Salary
				from tbl_EmployeeSelf as tbl_A, tbl_EmployeeSelf as tbl_B
				Where tbl_A.Employee_Id = tbl_B.Manager_Id

--Assignment :
--	We need to create a guest table with the column
--		Guest_Id
--		Guest_Name
--		Guest_FamilyCount
--		Guest_Gifts
--		Attend_Id
--We need to find guest list who attend the data and also we need to avoid null records.