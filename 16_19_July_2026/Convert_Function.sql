Conversion Function :
	Conversion function use to convert a value from one datatype to another datatype.
	We have twotypes of conversion function :
		Convert :
			Convert function use to convert a value from one datatype to another datatype	
				but we can format the value with convert function.

			-- Syntax :
				convert(new_datatype,expression,format_number)

				Here, format_number is optional field but new_datatype,and expression is
					mandatory field.

			-- Example :
				Select Employee_Name,Employee_Age,Employee_EmailId, 
					Employee_Salary,Employee_JoiningDate,
					Convert(nvarchar(20),Employee_JoiningDate,106) as Joining_Date
				from tbl_EmployeeMaster

				-- https://www.mssqltips.com/sqlservertip/1145/date-and-time-conversions-using-sql-server/

				Select Employee_Name,
					'Age = ' + Convert(nvarchar(10),Employee_Age) as Age,
					Employee_EmailId, 
					Employee_Salary,Employee_JoiningDate,
					Convert(nvarchar(20),Employee_JoiningDate,106) as Joining_Date
				from tbl_EmployeeMaster 

		Cast:
			Cast is use to convert a data from one datatype to another.
			Here we can not format the data.
			Cast is better than convert in performance.

			-- Syntax :
				Cast(expression as new_datatype)

			-- Example :
				Select Employee_Name,
					'Age = ' + Cast(Employee_Age as nvarchar(10)) as Age,
					Employee_EmailId, 
					Employee_Salary,Employee_JoiningDate,
					Convert(nvarchar(20),Employee_JoiningDate,106) as Joining_Date
				from tbl_EmployeeMaster 