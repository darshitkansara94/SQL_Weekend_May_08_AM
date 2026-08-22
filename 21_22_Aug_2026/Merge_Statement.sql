Merge :
	Merge statement is use to perform upsert operation.
	If we need to sync data between two same table then we can use this merge 
		statement.
	This statement work on two thing Source and Target.
	Source is a table from where we fetch the data.
	And target is table where we store a data or sync the data.

	-- Syntax :
		Merge Traget_table as T
		using source_table as S
		on Target.column_name = Source.column_name

		When matched then
			-- Update

		When not matched by Target then
			-- Insert

		When not matched by Source Then
			-- Delete;

	-- Example :
		Select * from tbl_ProductTarget
		Select * from tbl_ProductSource

		Merge tbl_ProductTarget as PT
		using tbl_ProductSource as PS
		on PT.Product_Id = PS.Product_Id

		When matched Then
			Update set
				PT.Product_Name = PS.Product_Name,
				PT.Product_Price = PS.Product_Price
		When not matched by Target Then
			Insert (Product_Name,Product_Price)
			values(PS.Product_Name,PS.Product_Price)
		When not matched by Source Then
			Delete;

		-- Example 2:
		Merge tbl_ProductTarget as PT
		using tbl_ProductSource as PS
		on PT.Product_Name = PS.Product_Name

		When matched Then
			Update set
				PT.Product_Name = PS.Product_Name,
				PT.Product_Price = PS.Product_Price
		When not matched by Target Then
			Insert (Product_Name,Product_Price)
			values(PS.Product_Name,PS.Product_Price)
		When not matched by Source Then
			Delete;


		
		