USE [DevTestDB]
GO

INSERT INTO [dbo].[CarDetails]
           ([brand]
           ,[model]
           ,[carname]
           ,[price]
           ,[new]
           ,[Id])
     VALUES
           (<brand, varchar(20),>
           ,<model, varchar(25),>
           ,<carname, varchar(20),>
           ,<price, float,>
           ,<new, varchar(10),>
           ,<Id, int,>)
GO

