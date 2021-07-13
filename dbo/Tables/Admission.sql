CREATE TABLE [dbo].[Admission](
	[AdmissionsID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[ACT] [int] NULL,
	[SAT] [int] NULL,
	[HighSchoolID] [int] NOT NULL,
	[HighSchoolGPA] [decimal](9, 2) NOT NULL,
	[HighSchoolRank] [int] NULL,
	[AdmissionDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Admissions] PRIMARY KEY CLUSTERED 
(
	[AdmissionsID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admissions_HighSchools] FOREIGN KEY([HighSchoolID])
REFERENCES [dbo].[HighSchool] ([HighSchoolID])
GO

ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admissions_HighSchools]
GO
ALTER TABLE [dbo].[Admission]  WITH CHECK ADD  CONSTRAINT [FK_Admissions_Students1] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[Admission] CHECK CONSTRAINT [FK_Admissions_Students1]
GO
ALTER TABLE [dbo].[Admission] ADD  CONSTRAINT [DF_Admissions_HighSchoolID]  DEFAULT ((1)) FOR [HighSchoolID]