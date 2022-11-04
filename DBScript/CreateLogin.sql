USE [DevTestDB]
GO

/****** Object:  Table [dbo].[Login]    Script Date: 30-10-2022 23:09:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Login](
	[email] [varchar](40) NOT NULL,
	[password] [varchar](30) NOT NULL
) ON [PRIMARY]
GO

