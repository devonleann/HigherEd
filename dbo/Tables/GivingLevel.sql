﻿CREATE TABLE [dbo].[GivingLevel](
	[GivingLevelID] [int] IDENTITY(1,1) NOT NULL,
	[GivingLevel] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GivingLevel] PRIMARY KEY CLUSTERED 
(
	[GivingLevelID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]