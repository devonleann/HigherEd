CREATE TABLE [dbo].[Event](
	[EventID] [int] IDENTITY(1,1) NOT NULL,
	[EventName] [varchar](255) NOT NULL,
	[EventCategoryID] [int] NOT NULL,
	[EventDate] [datetime] NULL,
	[EventLocation] [varchar](100) NULL,
	[EventCost] [decimal](9, 0) NULL,
	[EventDescription] [varchar](250) NULL,
	[EventSponsor] [varchar](50) NULL,
	[EventDepartmentID] [int] NOT NULL,
	[EventSubDepartment] [varchar](50) NULL,
 CONSTRAINT [PK_Events] PRIMARY KEY CLUSTERED 
(
	[EventID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Events_EventCategory] FOREIGN KEY([EventCategoryID])
REFERENCES [dbo].[EventCategory] ([EventCategoryID])
GO

ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Events_EventCategory]
GO
ALTER TABLE [dbo].[Event]  WITH CHECK ADD  CONSTRAINT [FK_Events_EventDepartment] FOREIGN KEY([EventDepartmentID])
REFERENCES [dbo].[EventDepartment] ([EventDepartmentID])
GO

ALTER TABLE [dbo].[Event] CHECK CONSTRAINT [FK_Events_EventDepartment]