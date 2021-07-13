CREATE TABLE [dbo].[Donor](
	[DonorID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[Prefix] [varchar](10) NULL,
	[IncomeLevelID] [int] NULL,
	[Address1] [varchar](50) NOT NULL,
	[Address2] [varchar](50) NULL,
	[City] [varchar](50) NOT NULL,
	[State] [varchar](50) NOT NULL,
	[ZipCode] [varchar](10) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[RelationshipID] [int] NOT NULL,
	[GivingLevelID] [int] NOT NULL,
	[StudentID] [int] NULL,
 CONSTRAINT [PK_Donors] PRIMARY KEY CLUSTERED 
(
	[DonorID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Donor]  WITH CHECK ADD  CONSTRAINT [FK_Donors_GivingLevel] FOREIGN KEY([GivingLevelID])
REFERENCES [dbo].[GivingLevel] ([GivingLevelID])
GO

ALTER TABLE [dbo].[Donor] CHECK CONSTRAINT [FK_Donors_GivingLevel]
GO
ALTER TABLE [dbo].[Donor]  WITH CHECK ADD  CONSTRAINT [FK_Donors_IncomeLevel] FOREIGN KEY([IncomeLevelID])
REFERENCES [dbo].[IncomeLevel] ([IncomeLevelID])
GO

ALTER TABLE [dbo].[Donor] CHECK CONSTRAINT [FK_Donors_IncomeLevel]
GO
ALTER TABLE [dbo].[Donor]  WITH CHECK ADD  CONSTRAINT [FK_Donors_Relationship] FOREIGN KEY([RelationshipID])
REFERENCES [dbo].[Relationship] ([RelationshipID])
GO

ALTER TABLE [dbo].[Donor] CHECK CONSTRAINT [FK_Donors_Relationship]
GO
ALTER TABLE [dbo].[Donor]  WITH CHECK ADD  CONSTRAINT [FK_Donors_Students1] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[Donor] CHECK CONSTRAINT [FK_Donors_Students1]