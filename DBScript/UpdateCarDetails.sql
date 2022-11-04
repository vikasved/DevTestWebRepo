USE [DevTestDB]
GO

UPDATE [dbo].[CarDetails]
   SET [brand] = <brand, varchar(20),>
      ,[model] = <model, varchar(25),>
      ,[carname] = <carname, varchar(20),>
      ,[price] = <price, float,>
      ,[new] = <new, varchar(10),>
      ,[Id] = <Id, int,>
 WHERE <Search Conditions,,>
GO

