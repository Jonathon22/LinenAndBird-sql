CREATE TABLE dbo.Birds
	(
	Id uniqueidentifier NOT NULL Primary Key,
	Type int NOT NULL,
	Color varchar(25) NOT NULL,
	Size varchar(50) NOT NULL,
	Name varchar(50) NULL
	)  

	-- enter to save when adding data then ctrl + r to generate guid 
	-- drop table dbo.hats

	CREATE TABLE dbo.Hats
	(
		Id uniqueidentifier NOT NULL Primary Key default(newid()),
		Designer varchar(200) NULL,
		Color varchar(50) not null,
		Style int not null 
	)
	
--- Ctrl + Shift + R (refresh intellisence)

CREATE TABLE dbo.Orders
 (
	Id uniqueidentifier NOT NULL Primary Key default(newid()),
	BirdId uniqueidentifier Not Null,
	HatId uniqueidentifier NOT NULL,
	Price decimal(18, 2)
	CONSTRAINT FK_BirdId_BirdsID FOREIGN KEY (BirdId)
	REFERENCES dbo.Birds (Id),
	
	CONSTRAINT FK_HatId_HatssID FOREIGN KEY (HatId)
	REFERENCES dbo.Hats (Id)
 )

 select * 
 from orders o
 join hats h 
 on o.HatId = h.Id
 join Birds b 
 on b.Id = o.BirdId