System Defined Function :
	SDF is block of code or sql statement which is installed with the sql.
	We can use this function directly without writing single line of code or we
		can use it multiple times with the same DB or in different DB.
	Function is a block of code that is written to fulfill the purpose of
		reusability and avoid duplicacy of code.
	

	-- Types of SDF :
		-- Aggregate function:
			sum() :
				Sum return addition for a column.

				-- Syntax :
					Select Sum(expression) from tbl_name

				-- Example :
					Select * from tbl_EmployeeMaster

					Select Sum(Employee_Salary) as Salary					
					from tbl_EmployeeMaster

			min() :
				Return minimum value from column.

				-- Syntax :
					Select min(expression) from tbl_name

				-- Example :
					Select Min(Employee_Salary) as Salary from tbl_EmployeeMaster

					Select * from tbl_EmployeeMaster

			max() :
				Return maximum value from column.

				-- Syntax :
					Select Max(expression) from tbl_name

				-- Example :
					Select Max(Employee_Salary) as EmployeeSalary
					from tbl_EmployeeMaster

			avg() :
				Calculate average value.

				-- Syntax :
					Select avg(expression) from tbl_name

				-- Example :
					Select AVG(Employee_Salary) from tbl_EmployeeMaster

			count() :
				Return count of rows from table based on expression.

				-- Syntax :
					Select count(expression) from tbl_name

				-- Example :
					Select COUNT(*) from tbl_EmployeeMaster

					Select COUNT(Employee_Age) as Age from tbl_EmployeeMaster

					Select COUNT(Employee_Name) as Age from tbl_EmployeeMaster

					Select * from tbl_EmployeeMaster

		-- String function :
			String function use to manipulate string like extract a value from string
				or join two diff string value and present as single.

			-- Types of string function :
				-- len():
					Len function return a count of char present in the string.
					It will include a space in a count.

					-- Syntax :
						Select LEN(expression) from tbl_name

					-- Example :
						Select LEN('Hello World')

						Select LEN(' Hello World')

						Select LEN('Hello World ')

						Select LEN('Hello	World')

						Select * from tbl_EmployeeMaster

						Select Employee_Name,len(Employee_Name) as EmployeeName 
						from tbl_EmployeeMaster

				-- concat with + :
					Join two or more than two string and return as a single string.

					-- Syntax :
						Select expression1 + expression2 +....+ expressionN
						from tbl_name

					-- Example :
						Select 'Hello' + 'World'

						Select 'Hello' + ' World'

						Select 'Hello'+ ' ' + 'World'

						Select * from tbl_EmployeeMaster

						Select Employee_Name + Employee_Age
						from tbl_EmployeeMaster -- Error Statement

						Select Employee_Name+ ' ' + Employee_LastName + ' '  + Employee_EmailId as Fullname
						from tbl_EmployeeMaster



				-- concat() :
					Concat function use to merge two or more that two string values.

					-- Syntax :
						Select concat(expression1,expression2,....,expressionN)
						from tbl_name

					-- Example :
						Select concat(Employee_name,' ',Employee_lastName)
						from tbl_EmployeeMaster

						Select * from tbl_EmployeeMaster

						Select concat(Employee_Name,Employee_Age)
						from tbl_EmployeeMaster

						Select concat('Hello', ' ' ,'World', ' ','from', ' ','Weltech')

				-- concat_ws :
					WS stand for seperator.
					This function add a seperator after string value.
					
					-- Syntax :
						Select concat_ws(seperator,expression1,expression2,...,expressionN)
						from tbl_name

					-- Example :
						Select concat('Hello', ' ' ,'World', ' ','from', ' ','Weltech', ' ', '10')

						Select Concat_WS(' ','Hello','World','from','weltech')

						Select Concat_WS(' ',Employee_Name,Employee_LastName,Employee_Age) 
						from tbl_EmployeeMaster

				-- trim() :
					trim function remove whitespace from beggining of the string and end of the
						string.
					Whitespace is, At the beginning or ending of the string if we have  a space
						then this is consider as a whitespace.
					This space can be created intentionaly or for some purpose.

					-- Syntax :
						Select trim(expression) from tbl_name

					-- Example :
						Select trim(Employee_Name) from tbl_EmployeeMaster
						

						Select * from tbl_EmployeeMaster
						Where trim(Employee_Name) like 'p%'

				-- rtrim()
				-- ltrim()
				-- upper()
				-- lower()
				-- left()
				-- right()
				-- substring()

		-- Date and Time function
	