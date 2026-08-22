Create table tbl_ProductSource
(
	Product_ID int primary key identity(1,1),
	Product_Name Nvarchar(20),
	Product_price int 
)

Create table tbl_ProductTarget
(
	Product_ID int primary key identity(1,1),
	Product_Name Nvarchar(20),
	Product_price int 
)

Insert into tbl_ProductSource (Product_Name,Product_price)
values('Watch',2500),
('TV',25000),
('AC',48000)

Update tbl_ProductTarget set 
	Product_Name = 'Mouse', Product_Price = 1500
Where Product_ID = 3

Insert into tbl_ProductTarget (Product_Name,Product_price)
values('Headphone',5000),
('TV',25000),
('Watch',2500)

select * from tbl_ProductTarget
Select * from tbl_ProductSource
