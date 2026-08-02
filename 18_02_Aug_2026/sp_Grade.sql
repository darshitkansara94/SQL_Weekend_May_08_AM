Create procedure sp_Grade
(
	@Grade nvarchar(2)
)
As
Begin
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
		Where Grade = @Grade
End