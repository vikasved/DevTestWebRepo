USE [DevTestDB]
GO

/****** Object:  Table [dbo].[CarDetails]    Script Date: 30-10-2022 23:05:29 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CarDetails](
	[brand] [varchar](20) NOT NULL,
	[model] [varchar](25) NOT NULL,
	[carname] [varchar](20) NOT NULL,
	[price] [float] NOT NULL,
	[new] [varchar](10) NOT NULL,
	[Id] [int] NOT NULL,
 CONSTRAINT [PK_CarDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

