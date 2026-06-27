View :
	View is a virtual table which stored into memory.
	We can not see this table under DB but we can see this as a query form.
	We can not add or modify columns for virtual table.

	-- Syntax :
		Create view vw_name as
		Select * from tbl_name

	-- Example :
		Alter view vw_RegisterUser as
		Select Registration_Id,
		Concat_WS(' ',Registration_FirstName,Registration_LastName) as Name,
		Registration_Email
		from tbl_RegistrationMaster

		Select * from vw_RegisterUser

		Select * from tbl_RegistrationMaster

		INsert into tbl_RegistrationMaster(Registration_Id,Registration_FirstName)
		values(3,'Pratik')
