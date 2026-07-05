Conditions :
	Condition is code on which compiler decide to execute the particular code.
	Condition always retrun true or false.
	To verify condition we need to use a operator.
	We can not write condition under sql statements.
	But in the condition we can write sql statements.

	-- Types of condition :
		-- If..else :
			If..else condition has only two block of code. One block of code is IF and	
				second block of code is else.
			At a time only single block of code will get execute.
			Which block of code is execute that is decide based on condition.
			If condition is true then if block is execute if condition is false
			 then else block get execute.

			 -- Syntax :
				If (condition)
				Begin
					-- SQL statement
				End
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				If (5 > 6) -- false
				Begin
					print('5 is greater than 6')
				End
				Else
				Begin
					print('5 is less than 6')
				End

				Declare @value1 int = 10
				Declare @value2 int = 12

				If (@value1 > @value2)
				Begin
					print(concat(@value1,' is greater than ',@value2))
				End
				Else
				Begin
					print(concat_Ws(' ',@value1,'is less than',@value2))
				End

				-- Nested conditions 
				Declare @value1 int = 10
				Declare @value2 int = 10

				If (@value1 = @value2)
				Begin
					print(concat_ws(' ',@value1 ,'is equal to', @value2))
				End
				Else
				Begin
					If (@value1 > @value2)
					Begin
						print(concat_ws(' ',@value1,'is greater than',@value2))
					End
					Else
					Begin
						print(concat_ws(' ',@value1,'is less than',@value2))
					End
				End

		-- If..else if..else :
			This condition is similar to the if..else or extension of if..else.
			But here we can verify multiple condition.

			-- Syntax :
				If (condition)
				Begin
					-- SQL statement
				End
				else if (condition)
				Begin	
					-- SQL statement
				End
				.
				.
				.
				Else
				Begin
					-- SQL statement
				End

			-- Example :
				Declare @value1 int = 10
				Declare @value2 int = 20

				If(@value1 is null)
				Begin
					print('Value 1 is null')
				End
				Else If (@value2 is null)
				Begin
					print('Value 2 is null')
				End
				Else If (@value1 = @value2)
				Begin
					print(concat_ws(' ',@value1 ,'is equal to', @value2))
				End
				Else if(@value1 > @value2)
				Begin
					print(concat_ws(' ',@value1,'is greater than',@value2))
				End
				Else
				Begin
					print(concat_ws(' ',@value1,'is less than',@value2))
				End

				-- Exists :
					Select * from tbl_GuestList

					Declare @GuestName nvarchar(20) = 'Akash'

					If exists (Select Guest_Name from tbl_GuestList Where Guest_Name = @GuestName)
					Begin
						-- print('Update the data')
						Update tbl_GuestList set
							Guest_City = 'Baroda'
						Where Guest_Name = @GuestName
					End
					Else
					Begin
						Insert into tbl_GuestList(Guest_Name,Guest_City)
						values(@GuestName,'Baroda')
					End

					If not exists (Select Guest_Name from tbl_GuestList Where Guest_Name = @GuestName)
					Begin
						Insert into tbl_GuestList(Guest_Name,Guest_City)
						values(@GuestName,'Baroda')
					End
					Else
					Begin
						-- print('Update the data')
						Update tbl_GuestList set
							Guest_City = 'Baroda'
						Where Guest_Name = @GuestName
					End

					Select * from tbl_GuestList

		-- Case condition (Switch case) :
			Working mechanism is similar to the if..else and if..else if..else.
			The advantage of case condition is we can use this condition with in select statement.
				and we may get o/p based on column data.

			-- Syntax :
				-- Single condition
				Select case 
					when condition Then 
						'output' 
					else 
						'output' 
					end
				from tbl_name

				-- Multiple condition
				Select  Case
					When condition then 'output'
					When condition Then 'output'
					.
					.
					Else 'output' End
				from tbl_name

			-- Example :
				Select Case	
					When 6 > 5 Then '6 is greater than 5'
					Else '6 is less than 5' End as Comparision

				Declare @value1 int = 10
				Declare @value2 int = 12

				Select Case
					When @value1 is null Then 'Value 1 is null'
					When @value2 is null Then 'Value 2 is null'
					When @value1 = @value2 Then 'Value1 is equal to value2'
					When @value1 > @value2 Then 'Value1 is greater than value2'
					Else 'Value1 is less than value2' End compare

				Select * from tbl_GuestList
				Select * from tbl_AttendList

				Select Gl.Guest_Name,gl.Guest_City,
					al.Attend_Gift,
					Case 
						When al.Family_Member is null Then 'Not Visited'
						Else 'Visited' End as Attend_Status
				from tbl_GuestList gl
				Left join tbl_AttendList al on
					gl.Guest_Number = al.Guest_Number