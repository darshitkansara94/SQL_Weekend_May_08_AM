SQL :
	SQL define as Structured Query Language.
	Here everything already structured. Like all the templates are already defined we have
		to follow the structure.
	Ex. If we create a database then it will automatically fall under "Database"
		folder.


Database :
	Database is collection of data which we are storing electronically.
	Data is collection of information.
	We can not create a database with the same name within same server.
	Database name can not start with special char or numbers.
	Space is not allowed in database name insetead of that we can use underscore('_').

	-- Syntax :
		Create database db_name

		-- Switch between DB
		Use db_name

		-- Rename DB
		Alter database db_name
		modify name = new_Db_name

		-- Delete Database
		Drop database db_name

	-- Example :
		Create database DB_Stones

		Use DB_Stones

		Alter database db_Stones
		modify name = Stones_DB

		Drop database Stones_DB