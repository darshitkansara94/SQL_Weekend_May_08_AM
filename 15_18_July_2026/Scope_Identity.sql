Scopidentity :
	Scopeidentity return a last inserted value of primary key and identity key.
	We can use scopeidentity when we have a foreign key relation and we need tio use the	
		PK value in multiple statement.

	-- Syntax :
		scope_identity()


-- Assignment

--Calculate grade of a student based on marks

--CREATE TABLE Students (
--    StudentID INT PRIMARY KEY,
--    StudentName VARCHAR(50),
--    Marks INT
--);