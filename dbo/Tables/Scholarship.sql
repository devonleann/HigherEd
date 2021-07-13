CREATE TABLE [dbo].[Scholarship](
	[ScholarshipId] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[MajorID] [int] NOT NULL,
	[IncomeLevelID] [int] NOT NULL,
	[Amount] [decimal](9, 2) NOT NULL,
	[ScholarshipName] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ScholarshipId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Scholarship]  WITH CHECK ADD  CONSTRAINT [FK_Scholarship_IncomeLevel] FOREIGN KEY([IncomeLevelID])
REFERENCES [dbo].[IncomeLevel] ([IncomeLevelID])
GO

ALTER TABLE [dbo].[Scholarship] CHECK CONSTRAINT [FK_Scholarship_IncomeLevel]
GO
ALTER TABLE [dbo].[Scholarship]  WITH CHECK ADD  CONSTRAINT [FK_Scholarship_Major] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Major] ([MajorID])
GO

ALTER TABLE [dbo].[Scholarship] CHECK CONSTRAINT [FK_Scholarship_Major]
GO
ALTER TABLE [dbo].[Scholarship]  WITH CHECK ADD  CONSTRAINT [FK_Scholarship_Student] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[Scholarship] CHECK CONSTRAINT [FK_Scholarship_Student]