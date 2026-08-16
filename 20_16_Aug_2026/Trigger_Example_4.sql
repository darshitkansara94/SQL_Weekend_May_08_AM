Alter trigger tr_DeleteAttend
On tbl_AttendList
For Delete
As
Begin
	Insert into tbl_Log(Log_Discription,Insert_Date)
	Select 'Deleted data is : ' + Attend_Gift + ' Family members are :' + 
		cast(Family_Member as nvarchar(10)) + ' Id = ' + Cast(Attend_Number as nvarchar(20)),
		GETDATE() from deleted
End