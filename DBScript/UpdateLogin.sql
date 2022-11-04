USE [DevTestDB]
GO

UPDATE [dbo].[Login]
   SET [email] = <email, varchar(40),>
      ,[password] = <password, varchar(30),>
 WHERE <Search Conditions,,>
GO

