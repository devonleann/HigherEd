CREATE TABLE [dbo].[TransferringInstitution](
	[TransferringInstitutionID] [int] IDENTITY(1,1) NOT NULL,
	[TransferringInstitution] [varchar](255) NOT NULL,
 CONSTRAINT [PK_TransferringInstitution] PRIMARY KEY CLUSTERED 
(
	[TransferringInstitutionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]