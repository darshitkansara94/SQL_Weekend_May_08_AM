Error Handling :
	Error handling is use to handle runtime error that is occur due to some	
		logocal statement.
	There is two part in error handling : Try and catch
	Try, block use to write actual logic or actual sql statement.
	Catch, block use to handle the error that occur at runtime.
	While we use error handling methods our statement is execute success because
		the error is handle by the catch block.

	-- Syntax :
		begin try
			-- SQL Statement / Logic
		end try
		begin catch
			-- Error handling (SQL statement)
		end catch

	-- Example :
		Select 10 / 0 as Divide

		Begin try
			Select 10 / 2 as Divide

			print('This is try block')
		end try
		Begin catch
			Select 'Divide by zero is not possible'
		end catch

		Exec sp_Division 10,0

		Exec sp_Concat 'abc',10

		Exec sp_SelectEmployee
