Transactions :
	Transaction is sql statement that maintain the state of data insert,update or delete.
	As part of transaction we have two different statement : Commit and Rollback
	Commit, When we need to enter a data permenantly into the table that statement is
		consider as a commit.
	Rollback, When some wrong data enter then we can reverse previous entries from the 
		table that is execute in that particular transaction.
	But we can not reverse the entries once it is commit.
	This type of statemet is use when we have to enter a data in multiple table and 
		those tables are interdependent.

	-- Syntax :
		Begin transaction tr_name
		-- Commit
			commit transaction tr_name
			
		-- Rollback
			rollback transaction tr_name

	-- Example :
		Exec sp_GuestList
			@Guest_Name = 'Shivam',
			@Guest_City = 'Baroda',
			@Family_Member = 2

		Select * from tbl_GuestList
		Select * from tbl_AttendList