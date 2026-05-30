Operator :
	Operator is to compare a data or to do mathemtical operations.

	-- Types of Operator :
		-- Arithmetic Operator :
			Arithmetic operator is use to perform mathemetic operations.

			-- Types of Arithmetic operator :
				-- Addition (+) :
					Addition use to perform addition of number and if we give string
						value then it will merge and return as single string.

					-- Example :
						Select 10 + 10

						Select 'Hello' + 'World'

				-- Substraction (-) :
					Substraction of two values.

					-- Syntax :
						Select value1 - value2

					-- Example :
						Select 10 - 5

						Select 5 - 10

				-- Multiplication (*) :
					Multiplication of two or more numbers.

					-- Example :
						Select 10 * 10

				-- Division (/) :
					Divide a number

					-- Example  :
						Select 10/2

						Select 10 / 0 -- Error statement

				-- Modulo (%) :
					Give reminder of the division.

					-- Syntax :
						Select value1 % value2

					-- Example :
						Select 13 % 2

						Select 12 % 2

		-- Comparison Operator :
			Comparision operator compare two values.

			-- Types of comparision operator :
				-- Equal (=) :
					Compare two value and return output if Lef side value is equal to
						right side value.

				-- Not Equal (!=) :
					Not equal to make sure that left side value is not equal to
						right side value.
					We can use '<>' to denote not equal to.

				-- Greater than (>) :
					Greater than compares two values where left side value must be 
						greater than right side value.

				-- Greather than or equal to (>=) :
					Greather than or equal to compares a value with right side and if 
						value is greater than or equal to it will return as true.

				-- Less than (<) :
					Left side value should be less than right side value then only
						it will return as true else return false.

				-- Less than or equal to (<=) :
					Less than or equal to, If left side value is less or equal to then
						it will return as true other wise return false.

		-- Logical Operator :
			Logical operator is use when we need to filter data more accurately.

			-- Types Of Operators :
				And :
					Return output if all conditions are true. If any condition is false then we will not
						get any output.

					-- Syntax :
						Select * from tbl_name
						Where column_name = expression And column_name = expression And column_name = expression

					-- Example :
						Select * from tbl_Employee
						Where Employee_Id = 4 And Employee_name = 'Ajay'

						Select * from tbl_Employee
						Where Employee_Id = 4 And Employee_name = 'Dev'

				Or :
					If any condition is true we will get output for that condition.

					-- Syntax :
						Select * from tbl_name
						Where column_name = exprssion OR column_name = expression

					-- Example :
						Select * from tbl_Employee
						Where Employee_Id = 4 Or Employee_name = 'Ajay'

						Select * from tbl_Employee
						Where Employee_Id = 4 OR Employee_name = 'Pratik'

				In :
					In operator use to filter multiple record from single column.

					-- Syntax :
						Select * from tbl_name where column_name in (expression1,expressin2,..,expressionN)

					-- Example :
						Select * from tbl_Employee Where Employee_ID in (1,4,3)

						Select * from tbl_Employee Where Employee_ID in (1,4,3,10)

						Select * from tbl_Employee
						Where Employee_Name in ('Dev','Ajay')

				Like :
					Like operator filter out vaue based on start with, end with and contains searching
						criteria.
					We will use this criteria by applying '%' sign.

					-- Syntax :
						-- Start with
						Select * from tbl_name
						Where column_name like 'exprssion%'

						-- End with
						Select * from tbl_name
						Where column_name like '%expression'

						-- Contains :
						Select * from tbl_name
						Where column_name like '%expression%'

					-- Example :
						Select * from tbl_Employee

						-- Start with
						Select * from tbl_Employee
						Where Employee_name like 'D%'

						Select * from tbl_Employee
						Where Employee_name like 'Da%'

						Select * from tbl_Employee
						Where Employee_name like 'De%'

						-- End with
						Select * from tbl_Employee
						Where Employee_Name like '%v'

						-- Contains :
						Select * from tbl_Employee
						Where Employee_Name like '%ar%'

						Update tbl_Employee Set
							Employee_Age = 27
						Where Employee_Name like 'Hars%'

				Null
				Is Null
				Not
				Between
				Exists