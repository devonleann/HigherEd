CREATE TABLE [dbo].[Donation](
	[DonationID] [int] IDENTITY(1,1) NOT NULL,
	[EventID] [int] NOT NULL,
	[DonorID] [int] NOT NULL,
	[Date] [datetime] NOT NULL,
	[Amount] [decimal](9, 2) NOT NULL,
 CONSTRAINT [PK_Donations] PRIMARY KEY CLUSTERED 
(
	[DonationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Donation]  WITH CHECK ADD  CONSTRAINT [FK_Donations_Donors] FOREIGN KEY([DonorID])
REFERENCES [dbo].[Donor] ([DonorID])
GO

ALTER TABLE [dbo].[Donation] CHECK CONSTRAINT [FK_Donations_Donors]
GO
ALTER TABLE [dbo].[Donation]  WITH CHECK ADD  CONSTRAINT [FK_Donations_Events] FOREIGN KEY([EventID])
REFERENCES [dbo].[Event] ([EventID])
GO

ALTER TABLE [dbo].[Donation] CHECK CONSTRAINT [FK_Donations_Events]