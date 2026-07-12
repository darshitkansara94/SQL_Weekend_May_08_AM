select * from tbl_EmployeeMaster

Alter procedure sp_tbl_Employee
(
	@action varchar(10),
	@id int= null,
	@firstname varchar(25)= null,
	@age int = null,
	@mailid nvarchar(60) = null,
	@salary decimal(15,2)=null,
	@lastName varchar(10)=null,
	@joining date =null
)
AS
Begin
	if (@action = 'Insert')
	Begin
		Insert into tbl_EmployeeMaster(Employee_Id,Employee_Name,Employee_Age,Employee_EmailId,
		Employee_Salary,Employee_LastName,Employee_JoiningDate)
		values(@id,@firstname,@age,@mailid,@salary,@lastName,@joining)
	End
	else if (@action = 'Select')
	begin
		if @id is null 
		begin 
		select * from tbl_EmployeeMaster
		end
		else 
		begin
			Select * from tbl_EmployeeMaster
			where Employee_Id =@id
		end
	end
	else if (@action = 'Update')
	begin
		update tbl_EmployeeMaster set 
		Employee_Salary = Employee_Salary or Employee_Salary = @salary,
		Employee_Name = Employee_Name,
		Employee_Age = @age,
		Employee_EmailId = Employee_EmailId,
		Employee_LastName = Employee_LastName,
		Employee_JoiningDate = Employee_JoiningDate
		where Employee_Id = @id
	end
	else if (@action = 'Delete')
	begin
		delete from tbl_EmployeeMaster
		where Employee_Id = @id
	end
End 


exec sp_tbl_Employee
	@action = 'update',
	@lastName = 'Patel',
	@age = 23,
	@mailid = 'xyz@gmail.com',
	@salary = 25000,
	@id = 19

exec sp_tbl_Employee
	@action = 'delete'
