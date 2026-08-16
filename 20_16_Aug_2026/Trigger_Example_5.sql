Alter trigger tr_UpdateAttend
On tbl_AttendList
For Update
As
Begin
	Insert into tbl_Log(Log_Discription,Insert_Date)
	Select 'Updated data is : ' + Attend_Gift + ' Family members are :' + 
		cast(Family_Member as nvarchar(10)),
		GETDATE() from inserted
End