Alter procedure sp_InsertStudent
(
	@Name varchar(20),
	@DOB date,
	@Age int,
	@Class_Id int
)
As
Begin
	Insert into tbl_Student(Student_Name,Student_DOB,Student_Age,Class_Id,IsDeleted)
	values(@Name,@DOB,@Age,@Class_Id,1)

	Select * from tbl_Student
	Inner join tbl_Class on
		tbl_Class.Class_Id = tbl_Student.Class_Id
	Where Student_Id = SCOPE_IDENTITY()
End

Exec sp_InsertStudent
	@Name = 'Jay 3'
	,@DOB = '2026-07-18'
	,@Age = 25
	,@Class_Id = 1

Select * from tbl_Student
Select * from tbl_Class