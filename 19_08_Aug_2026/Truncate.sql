Truncate :
	Truncate statement use to delete data from tabe and also truncate statement 
		reset the keys inside table.
	We can not use where cluase with the truncate statement.

	-- Syntax :
		truncate table tbl_name

	--  Example :
		Select * from tbl_AttendList

		-- Delete from tbl_AttendList

		Insert into tbl_AttendList(Guest_Number,Family_Member,Attend_Gift)
		values(2,2,'Cover')

		truncate table tbl_AttendList

Delete :
	Delete statement allow us to delete particuar row or all the data.
	While using delete statement keys are not reset into the table
Drop :
	Drop statement use to delete entities like table, database , SP, view etc.
	If we use drop dtatement it will also delete data of the table.
Truncate :
	Truncate does not allow us to delete data based on filter. It always
		delete all the data from table.
	While using truncate statement keys are getting reset for the table.
