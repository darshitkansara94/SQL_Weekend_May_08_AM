Group by :
	Group by use to merge rows with the duplicate value and display as a group.
	If the value is not same then it will display as a seperate values.
	Group by mostly use with the aggregate type of function.

	-- Syntax :
		Select * from tbl_name
		group by non_aggregate_columns

	-- Example :
		Select * from tbl_Student

		Select Student_Name,count(Student_Name) as Repeated_Value from tbl_Student
		Group by Student_Name

		Select Student_Name,count(Student_Name) as Repeated_Value 
		from tbl_Student
		Group by Student_Name
		Order by Student_Name

		Select Student_Name,count(Student_Name) as Repeated_Value 
		from tbl_Student
		Where Student_Name = 'Bhavesh'
		Group by Student_Name
		Order by Student_Name


		Select * from tbl_StudentDetail


