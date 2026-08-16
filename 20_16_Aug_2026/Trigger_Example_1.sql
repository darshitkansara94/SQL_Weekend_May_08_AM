Create trigger tr_PrintMessage
On tbl_AttendList
For Insert
As
Begin
	print('Data Insert Successfully...')
End