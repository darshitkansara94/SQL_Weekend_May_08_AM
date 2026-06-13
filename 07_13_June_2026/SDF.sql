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

				-- rtrim() :
					Rtrim function remove whitespace from right side of the string.
					And if whitespace present on left side then rtim is not able
						to remove it.

					-- Syntax :
						Select rtrim(expression) from tbl_name

					-- Example :
						Select * from tbl_EmployeeMaster --Jay  
						
						Select rtrim(Employee_Name) as EmployeeName_WithTrim,
							Employee_Name
						from tbl_EmployeeMaster --Jay

						--Jay   
						
				-- ltrim() :
					Ltrim function remove whitespace from left side of the string.
					If we have a whitespace at the right side then this function
						can not remove it.

					-- Syntax :
						Select Ltrim(expression) from tbl_name

					-- Example :
						Select Ltrim(Employee_NAme) as Name_Ltrim, 
							Employee_Name
						from tbl_EMployeeMaster						

				-- upper() :
					Upper function use to convert text into uppercase.
					If we have a number or special char then no changes were
						applied on it.

					-- Syntax :
						Select Upper(expression) from tbl_name

					-- Example :
						Select upper(Employee_Name) as EmployeeName
						from tbl_EmployeeMaster

				-- lower() :
					Lower function use to convert text into lowercase.

					-- Syntax :
						Select lower(expression) from tbl_name

					-- Example :
						Select lower(Employee_name) as Name,
							Employee_Name
						from tbl_EmployeeMaster

				-- left() :
					Left function use to extract value from string.
					This function travel from left to right.
					And it is always start with the index 1. We can not extract value
						from middle of the string.

					-- Syntax :
						Select left(expression,count_of_char)

						-- count_of_char : How many char we want to extract from string.

					-- Example :
						Select Left('Hello world',3)

						Select Left(Employee_Name,3) from tbl_EmployeeMaster

						Select Left(Ltrim(Employee_Name),3)
						from tbl_EmployeeMaster

				-- right() :
					This is similar to the left function only
						the difference is extract value from right to left.

					-- Syntax :
						Select right(expression,count_of_char) from tbl_name

					-- Example :
						Select Right('Hello world',4)

						Select Right(trim(Employee_Name),2) 
						from tbl_EmployeeMaster

				-- substring() :
					Substring function use to extract a value from any index of the 
						string.
					We can assign a starting index and no of char we want to extract
						from string.

					-- Syntax :
						Select Substring(expression,starting_index,no_of_char)
						from tbl_name

						-- starting_index : From which index i want to start
							-- string extraction
						-- no_of_char : How many char we need to extract

					-- Example :
						Select Substring('Hello World',2,3)

						Select Substring('Hello World',5,4)

						Select 
							Substring(trim(Employee_Name),2,3)
						from tbl_EmployeeMaster

		-- Date and Time function :
			If i need to extract any value from date and time  or if i need to get 
				current date and time then we can use this functions.

			-- Types of Date and Time function :
				sysdatetime() :
					sysdatetime use to fetch current date and time of the system.

					-- Example :
						Select sysdatetime() -- 2026-06-13 09:05:00.8765746

				sysUtcdatetime():
					UTC represent Universal coordinated time.
					It will retuen same time across all the countries or region.

					-- Example :
						Select sysutcdatetime() -- 2026-06-13 03:39:23.6436223

				getdate() :
					getdate function return date and time from the system where
						my sql is installed.

					-- Example :
						Select getdate() -- 2026-06-13 09:13:45.897

				getutcdate() :
					This will return date and time in UTC format which is same
						across all the countires.
					When our website or application run on multiple region or
						country then we need to use getutcdate.

					-- Example :
						Select getutcdate() -- 2026-06-13 03:47:07.897

				day() :
					If i want to extract current date from the date.

					-- Syntax :
						Select day(expression) from tbl_name

					-- Example :
						Select day(getdate()) -- 13

						Select * from tbl_EmployeeMaster

						Select day(Employee_JoiningDate) from 
						tbl_EmployeeMaster

				month() :
					Extract only month from date and time.

					-- Syntax :
						Select month(expression) from tbl_name

					-- Example :
						Select month(getdate())

						Select month(Employee_JoiningDate) from 
						tbl_EmployeeMaster

				year() :
					Extract only year from date and time.

					-- Syntax :
						Select year(expression) from tbl_name

					-- Example :
						Select year(getdate())

						Select year(Employee_JoiningDate) from 
						tbl_EmployeeMaster

				datediff() :
					return a differene between tow dates.
					This difference is calculate based on day, month or year.

					-- Syntax :
						Select Datediff(calculate_based_on,expression1,exression2)

					-- Example :
						Select datediff(day,'2025-06-12 09:28:36.430','2026-06-13 09:28:36.430')

						Select datediff(month,'2026-01-12 09:28:36.430','2026-06-13 09:28:36.430')

						Select datediff(year,'2025-01-12 09:28:36.430','2026-06-13 09:28:36.430')

						Select datediff(hour,'2026-06-13 07:28:36.430','2026-06-13 09:28:36.430')

						select getdate()

				isdate() :
					isdate function use to validate date and time.
					It also validate date and time format. 
					This function always retrun either 1 or 0.
					If we get output as 1 then it is true else false.

					-- Syntax :
						Select isdate(expression) from tbl_name

					-- Example :
						Select isdate(getdate())

						Select isdate('2026-13-13 09:33:08.210')

						Select isdate('2026-06-31 26:33:08.210')

						Select getdate()

				datename()
					Datename function use to extract a different type of values from date and time.
					This function return a value in string datatype.

					-- Example :
						Select DATENAME(day,GETDATE())
						Select DATENAME(MONTH,GETDATE()) -- June
						Select DATENAME(YEAR,GETDATE())
						Select DATENAME(HOUR,GETDATE())
						Select DATENAME(HH,GETDATE())
						Select DATENAME(MINUTE,GETDATE())
						Select DATENAME(SECOND,GETDATE())
						Select DATENAME(MILLISECOND,GETDATE())
						Select DATENAME(MICROSECOND,GETDATE())
						Select DATENAME(DAYOFYEAR,GETDATE())
						Select DATENAME(WEEKDAY,GETDATE()) -- Saturday
						Select DATENAME(QUARTER,GETDATE())
						Select DATENAME(WEEK,GETDATE())
						Select DATENAME(ISO_WEEK,GETDATE())

				datepart() :
					Datepart is similar to the date name function only the difference is
						this function return a value in int type.

					-- Example :
						-- Assignement

Select concat(day(getdate()),'-',month(getdate()))

	