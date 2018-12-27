﻿CREATE TABLE [dbo].[TB_MENTOR](
	[ID] INT IDENTITY (1, 1) NOT NULL,
	[IdUser] INT NOT NULL,
	CONSTRAINT [PK_MENTOR] PRIMARY KEY([ID]),
	CONSTRAINT [FK_MENTOR_USER] FOREIGN KEY(IdUser) REFERENCES TB_USER([ID])
)