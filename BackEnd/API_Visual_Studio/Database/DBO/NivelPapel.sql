﻿CREATE TABLE [dbo].[TB_NVPAPEL](
	[ID] INT IDENTITY NOT NULL,
	[Desc] VARCHAR(15) NOT NULL,
	[Nivel] SMALLINT NOT NULL,
	CONSTRAINT [PK_NVPAPEL] PRIMARY KEY([ID])
)
GO