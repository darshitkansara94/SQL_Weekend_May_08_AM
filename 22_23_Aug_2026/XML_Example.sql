Declare @xml XML = '
	<Students>
		<Student>
			<Name>Abhijit</Name>
			<Age>22</Age>
			<Email>abc@gmail.com</Email>
		</Student>
		<Student>
			<Name>Sahil</Name>
			<Age>25</Age>
			<Email>xyz@gmail.com</Email>
		</Student>
		<Student>
			<Name>Dhruv</Name>
			<Age>23</Age>
			<Email>dhruv@gmail.com</Email>
		</Student>
	</Students>';

Declare @Name nvarchar(20)
Declare @Age int
Declare @Email nvarchar(50)

Declare cr_Student cursor for
	Select 
		x.value('(Name[1])','nvarchar(20)') as Student_Name,
		x.value('(Age[1])','int') as Student_Age,
		x.value('(Email[1])','nvarchar(50)') as Student_Email 
	from 
	@xml.nodes('/Students/Student') as T(x)

	Open cr_Student
		Fetch next from cr_Student into @Name,@Age,@Email
		
		Insert into tbl_Student(Student_Name,Student_Age,Student_Email)
		values(@Name,@Age,@Email)

		While @@FETCH_STATUS = 0
		Begin
			Fetch next from cr_Student into @Name,@Age,@Email
		
			Insert into tbl_Student(Student_Name,Student_Age,Student_Email)
			values(@Name,@Age,@Email)
		End

	Close cr_Student
Deallocate cr_Student

