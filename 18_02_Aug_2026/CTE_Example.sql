1. Find 3rd highest salary.
2. I have a table and i need to found duplicate values and delete those values


Select * from tbl_EmployeeDetails

-- Find Highest salary 

Select Employee_Name, Employee_EmailId,Employee_Salary,
DENSE_RANK() over(order by Employee_Salary desc) as rnk
from tbl_EmployeeDetails

Select Employee_Name, Employee_EmailId,Employee_Salary,
DENSE_RANK() over(order by Employee_Salary desc) as rnk
from tbl_EmployeeDetails

with cte_SalaryRank as
(
	Select Employee_Name, Employee_EmailId,Employee_Salary,
	DENSE_RANK() over(order by Employee_Salary desc) as rnk
	from tbl_EmployeeDetails
)

Select * from cte_SalaryRank Where rnk = 5


-- 2. Delete Duplicate Data from table
Select * from tbl_EmployeeDetails


Select Employee_ID,Employee_Name,Employee_EmailId,Employee_Salary,
ROW_NUMBER() over(partition by Employee_name,Employee_EmailId order by Employee_Id desc) as rnk
from tbl_EmployeeDetails

With cte_DuplicateData as
(
	Select Employee_ID,Employee_Name,Employee_EmailId,Employee_Salary,
	ROW_NUMBER() over(partition by Employee_name order by Employee_Id desc) 
		as rnk
	from tbl_EmployeeDetails
)

Delete from cte_DuplicateData Where rnk > 1

Select * from cte_DuplicateData
Where rnk > 1

