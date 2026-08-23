Rank :
	Rank function is use to give sequential number to the rows.
	But it will skip the number if previously number was in same sequence.

	-- Syntax :
		Select RANK() over(Order by column_name asc/desc) as alias_name,
			column_name,...column_nameN
		from tbl_name

	-- Example :
		Select RANK() over(Order by Product_Name desc) as rnk,
			Product_Name,Product_price,Product_Year		
		from tbl_ProductSource
