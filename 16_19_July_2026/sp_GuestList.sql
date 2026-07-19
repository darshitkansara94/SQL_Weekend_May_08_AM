Alter procedure sp_GuestList
(
	@Guest_Name nvarchar(20),
	@Guest_City nvarchar(10),
	@Family_Member int
)
As
Begin
	Begin try
		Begin transaction tr_AttendList
			Insert into tbl_GuestList(Guest_Name,Guest_City)
			values(@Guest_Name,@Guest_City)

			Insert into tbl_AttendList(Guest_Number,Family_Member)
			values(SCOPE_IDENTITY(),@Family_Member)
		Commit transaction tr_AttendList
	End try
	Begin catch
		Rollback transaction tr_AttendList
		Select 'Data insert failed'
	End catch
End