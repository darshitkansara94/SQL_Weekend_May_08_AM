Trigger :
	Trigger is a special type of event in DB.
	It is block of code that execute on some particular action or event.
	We can create a trigger for Insert, Update and Delete operation.
	Trigger does not support parameters.
	We can use trigger while we need to maintain some type of log or table is	
		interdependent.
	We have two types of trigger : For and After.
	For trigger execute at the same time when parent query start execution.
	After trigger execute once previous execution is completed.

	-- Syntax :
		Create trigger tr_name
		On tbl_name
		For {Insert / Update / Delete}
		As
		Begin
			-- SQL Statement
		End

		-- After trigger
		Create trigger tr_name
		On tbl_name
		After {Insert / Update / Delete}
		As
		Begin
			-- SQL Statement
		End

	-- Example :
		Select * from tbl_AttendList

		Insert into tbl_AttendList(Guest_Number,Family_Member,Attend_Gift)
		values(3,2,'Cover')

		Insert into tbl_AttendList(Guest_Number,Family_Member,Attend_Gift)
		values(3,2,'Pen')

		Update tbl_AttendList set
			Family_Member = 5,
			Attend_Gift = 'Car'
		Where Attend_Number = 2

		Delete from tbl_AttendList Where Attend_Number = 2

		select * from tbl_log

		exec sp_DeleteAttendList @AttendList_Id = 4
