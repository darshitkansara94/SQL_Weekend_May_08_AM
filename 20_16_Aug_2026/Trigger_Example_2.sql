Create trigger tr_GetGiftName
On tbl_AttendList
For Insert
As
Begin
	Declare @GiftName nvarchar(20)

	Select @GiftName = Attend_Gift from inserted

	Print('Gift name is : ' + @GiftName)
End