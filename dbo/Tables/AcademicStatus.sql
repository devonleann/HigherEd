CREATE TABLE [dbo].[AcademicStatus](
	[AcademicStatus] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[StandingID] [int] NOT NULL,
 CONSTRAINT [PK_AcademicStatus] PRIMARY KEY CLUSTERED 
(
	[AcademicStatus] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AcademicStatus]  WITH CHECK ADD  CONSTRAINT [FK_AcademicStatus_Standing] FOREIGN KEY([StandingID])
REFERENCES [dbo].[Standing] ([StandingID])
GO

ALTER TABLE [dbo].[AcademicStatus] CHECK CONSTRAINT [FK_AcademicStatus_Standing]
GO
ALTER TABLE [dbo].[AcademicStatus]  WITH CHECK ADD  CONSTRAINT [FK_AcademicStatus_Students] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[AcademicStatus] CHECK CONSTRAINT [FK_AcademicStatus_Students]