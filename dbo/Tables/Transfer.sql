CREATE TABLE [dbo].[Transfer](
	[TransferID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[Year] [nchar](4) NULL,
	[Semester] [varchar](10) NULL,
	[TransferringInstitutionID] [int] NOT NULL,
	[GPA] [decimal](9, 2) NOT NULL,
	[DiplomaFlag] [bit] NOT NULL,
 CONSTRAINT [PK_AcademicHistory] PRIMARY KEY CLUSTERED 
(
	[TransferID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Transfer]  WITH CHECK ADD  CONSTRAINT [FK_Transfers_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[Transfer] CHECK CONSTRAINT [FK_Transfers_Students]
GO
ALTER TABLE [dbo].[Transfer]  WITH CHECK ADD  CONSTRAINT [FK_Transfers_TransferringInstitution] FOREIGN KEY([TransferringInstitutionID])
REFERENCES [dbo].[TransferringInstitution] ([TransferringInstitutionID])
GO

ALTER TABLE [dbo].[Transfer] CHECK CONSTRAINT [FK_Transfers_TransferringInstitution]