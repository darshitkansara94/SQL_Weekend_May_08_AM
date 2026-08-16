Create procedure sp_DeleteAttendList
(
	@AttendList_Id int
)
As
Begin
	Delete from tbl_AttendList Where Attend_Number = @AttendList_Id
End