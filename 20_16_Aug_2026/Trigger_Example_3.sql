Alter trigger tr_Log
On tbl_AttendList
For Insert
As
Begin
	Declare @Gift_Name nvarchar(20)

	Select @Gift_Name = Attend_Gift from inserted

	--Insert into tbl_Log(Log_Discription,Insert_Date)
	--values(CONCAT_WS(' ', 'Inserted data is :',@Gift_Name),GETDATE())

	Insert into tbl_Log(Log_Discription,Insert_Date)
	Select 'Inserted data is : ' + Attend_Gift + 'Family members are :' + 
		cast(Family_Member as nvarchar(10)),
		GETDATE() from inserted
End