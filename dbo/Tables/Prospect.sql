CREATE TABLE [dbo].[Prospect](
	[ProspectID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Address1] [nvarchar](250) NULL,
	[Address2] [nvarchar](200) NULL,
	[City] [nvarchar](250) NULL,
	[State] [nchar](2) NULL,
	[Zip] [nvarchar](10) NULL,
	[HomePhone] [nvarchar](15) NULL,
	[CellPhone] [nvarchar](15) NULL,
	[WorkPhone] [nvarchar](15) NULL,
	[CurrentEmployer] [nvarchar](50) NULL,
	[Notes] [nvarchar](50) NULL
) ON [PRIMARY]