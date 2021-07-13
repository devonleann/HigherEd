CREATE TABLE [dbo].[FinancialAid](
	[FinancialAidID] [int] IDENTITY(1,1) NOT NULL,
	[StudentID] [int] NOT NULL,
	[AidTypeID] [int] NOT NULL,
	[Amount] [varchar](25) NOT NULL,
 CONSTRAINT [PK_FinancialAid] PRIMARY KEY CLUSTERED 
(
	[FinancialAidID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FinancialAid]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAid_FinancialAidType] FOREIGN KEY([AidTypeID])
REFERENCES [dbo].[FinancialAidType] ([AidTypeID])
GO

ALTER TABLE [dbo].[FinancialAid] CHECK CONSTRAINT [FK_FinancialAid_FinancialAidType]
GO
ALTER TABLE [dbo].[FinancialAid]  WITH CHECK ADD  CONSTRAINT [FK_FinancialAid_Students1] FOREIGN KEY([StudentID])
REFERENCES [dbo].[Student] ([StudentID])
GO

ALTER TABLE [dbo].[FinancialAid] CHECK CONSTRAINT [FK_FinancialAid_Students1]