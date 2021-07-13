CREATE TABLE [dbo].[StudentContact](
	[ContactID] [int] IDENTITY(1,1) NOT NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[ZipCode] [varchar](10) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[PhoneNumber] [varchar](20) NULL,
	[EmailAddress] [varchar](50) NULL,
 CONSTRAINT [PK_StudentContact] PRIMARY KEY CLUSTERED 
(
	[ContactID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]