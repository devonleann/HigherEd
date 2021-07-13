CREATE TABLE [dbo].[Participation](
	[ParticipationID] [int] IDENTITY(1,1) NOT NULL,
	[ClubID] [int] NOT NULL,
	[StudentID] [int] NOT NULL,
	[Current] [bit] NOT NULL,
	[JoinDate] [datetime] NOT NULL,
	[EndDate] [datetime] NULL,
	[Role] [varchar](50) NULL,
 CONSTRAINT [PK_Participation] PRIMARY KEY CLUSTERED 
(
	[ParticipationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Participation]  WITH CHECK ADD  CONSTRAINT [FK_Participation_Clubs] FOREIGN KEY([ClubID])
REFERENCES [dbo].[Club] ([ClubID])
GO

ALTER TABLE [dbo].[Participation] CHECK CONSTRAINT [FK_Participation_Clubs]
GO
ALTER TABLE [dbo].[Participation]  WITH CHECK ADD  CONSTRAINT [FK_Participation_Students1] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[Participation] CHECK CONSTRAINT [FK_Participation_Students1]