﻿CREATE TABLE [dbo].[TB_UNIDADE](
	[ID] INT IDENTITY NOT NULL,
	[IdPais] INT NOT NULL,
	[Nome] VARCHAR(50) NOT NULL,
	[EstSigla] CHAR(2) NOT NULL,
	CONSTRAINT [PK_UNIDADE] PRIMARY KEY([ID]),
	CONSTRAINT [FK_UNIDADE_PAIS] FOREIGN KEY([IdPais]) REFERENCES TB_PAIS([ID])
)
GO