Loop :
	Loop is iterable statement.
	This statement is use to execute the same or different code multiple time during 
		run time.
	This code execute based on condition so if we get o/p as false then loop stop	
		execution and execute code outside of the loop.

	-- Syntax :
		while condition
		Begin
			-- SQL statement
		End

	-- Example :
		Declare @i as int = 10
		While @i > 5
		Begin
			print('Loop execution' + cast(@i as nvarchar(5)))
			Set @i = @i - 1
		End

		Declare @j as int = 5
		While @j <= 10
		Begin
			print('Loop execution' + cast(@j as nvarchar(5)))
			Set @j = @j + 1
		End