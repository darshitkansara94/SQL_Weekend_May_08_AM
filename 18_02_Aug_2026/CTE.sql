CTE :
	CTE full name is Common Table Expression.
	CTE create a virtual table into memory juts like a view but after execution
		completion table delete itself from the memory.
	CTE always start with the keyword 'with'.
	In CTE creation of virtual table and fetch data from virtual table this two process
		execute in single execution.
	-- Syntax :
		with cte_name as
		(
			-- Select  statement
		)
 
		Select * from cte_name

	-- Example :
		Select * from tbl_Students
		Where Marks > 90

		with cte_StudentMarks as
		(
			Select * from tbl_Students
			Where Marks > 90
		)

		Select * from cte_StudentMarks

		----------------------------------------
		With cte_Grade as
		(
			Select StudentID,StudentName,Marks, 
			Case 
				When Marks between 90 and 100 Then 'A'
				When Marks between 70 and 89 Then 'B'
				When Marks between 50 and 69 Then 'C'
				When Marks between 35 and 49 Then 'D'
				Else 'F' End as Grade
			from tbl_Students
		)

		Select * from cte_Grade
		Where Grade = 'A'

		Exec sp_Grade 'B'
		Exec sp_Grade 'F'

