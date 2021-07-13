CREATE TABLE [dbo].[Student](
	[StudentID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NOT NULL,
	[LastName] [varchar](50) NOT NULL,
	[BirthDate] [datetime] NOT NULL,
	[MaritalStatus] [int] NOT NULL,
	[Gender] [char](1) NOT NULL,
	[Race] [varchar](20) NULL,
	[Current] [int] NOT NULL,
	[GraduationDate] [datetime] NULL,
	[ContactID] [int] NOT NULL,
	[AdvisorID] [int] NOT NULL,
	[MajorID] [int] NOT NULL,
	[Major2ID] [int] NULL,
	[MinorID] [int] NULL,
	[HousingStatus] [char](3) NOT NULL,
	[FullTime/PartTime] [char](1) NOT NULL,
	[LegacyStatus] [int] NOT NULL,
	[SiblingStatus] [int] NOT NULL,
	[TransferFlag] [int] NOT NULL,
 CONSTRAINT [PK_Students1] PRIMARY KEY CLUSTERED 
(
	[StudentID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Students_Advisor1] FOREIGN KEY([AdvisorID])
REFERENCES [dbo].[Advisor] ([AdvisorID])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Students_Advisor1]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Students_Major3] FOREIGN KEY([MajorID])
REFERENCES [dbo].[Major] ([MajorID])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Students_Major3]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Students_Major4] FOREIGN KEY([Major2ID])
REFERENCES [dbo].[Major] ([MajorID])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Students_Major4]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Students_Major5] FOREIGN KEY([MinorID])
REFERENCES [dbo].[Major] ([MajorID])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Students_Major5]
GO
ALTER TABLE [dbo].[Student]  WITH CHECK ADD  CONSTRAINT [FK_Students_StudentContact1] FOREIGN KEY([ContactID])
REFERENCES [dbo].[StudentContact] ([ContactID])
GO

ALTER TABLE [dbo].[Student] CHECK CONSTRAINT [FK_Students_StudentContact1]