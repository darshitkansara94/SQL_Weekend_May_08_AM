Pivot Table :
	Pivot table is use to convert a column data into row.
	This statement generally use for the reporting purpose.
	Here aggregate function is mandatorya and to create a pivot table
		we will use subquery with from.

	-- Syntax :
		Select * from
			(
				Select column_name1,column_name2,column_name3,...column_nameN
				from tbl_name
			) as alias_name
			pivot
			(
				aggregate_function(column_name) 
				for column_name in ([column_name1],[column_name2]..)
			) as pivot

	-- Example :
		Select * from tbl_ProductSource

		Alter table tbl_ProductSource
		Add Product_Year int

		Insert into tbl_ProductSource(Product_Name,Product_price)
		values('TV',9000)

		Update tbl_ProductSource set
			Product_Year = 2010
		Where Product_ID in (5)

		Update tbl_ProductSource set
			Product_Year = 2005
		Where Product_ID in (3,4)

		Update tbl_ProductSource set
			Product_Year = 2010
		Where Product_ID in (2)

		Select * from tbl_ProductSource

		Select Product_Year,Isnull([Headphone],0) as [Headphone],
		Isnull([TV],0) as [TV],
		Isnull([AC],0) as [AC],
		Isnull([Watch],0) as [Watch] from
		(
			Select Product_Name,Product_Price,
			Product_Year
			from tbl_ProductSource
		) as ps
		Pivot
		(
			Sum(Product_Price) for Product_Name in
			([Headphone],[TV],[AC],[Watch])
		) as pvt