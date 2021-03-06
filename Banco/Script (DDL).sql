CREATE DATABASE SCOPIO
GO

USE SCOPIO
GO

-- TABLE N�VEL PAPEL
CREATE TABLE [dbo].[TB_NVPAPEL](
	[ID] INT IDENTITY NOT NULL,
	[Desc] VARCHAR(15) NOT NULL,
	[Nivel] SMALLINT NOT NULL,
	CONSTRAINT [PK_NVPAPEL] PRIMARY KEY([ID])
)
GO

-- TABLE PAPEL
CREATE TABLE [dbo].[TB_PAPEL](
	[ID] INT IDENTITY NOT NULL,
	[Desc] VARCHAR(50) NOT NULL,
	[Nivel] SMALLINT NOT NULL,
	CONSTRAINT [PK_PAPEL] PRIMARY KEY([ID])
)
GO
-- TABLE RESPONSABILIDADE
CREATE TABLE [dbo].[TB_RESPONSABILIDADE](
	[ID] INT IDENTITY NOT NULL,
	[Nome] VARCHAR(50) NOT NULL,
	CONSTRAINT [PK_RESPONSABILIDADE] PRIMARY KEY([ID])
)
GO

-- TABLE USER
CREATE TABLE [dbo].[TB_USER](
	[ID] INT IDENTITY NOT NULL,
	[IdPapel] INT NOT NULL,
	[IdNivel] INT NOT NULL,
	[IdResponsabilidade] INT NULL,
	[Avatar] VARCHAR(200) NULL,
	[Nome] VARCHAR(50) NOT NULL,
	[Email] VARCHAR(100) NULL,
	[Tel] VARCHAR(14) NULL,
	[Status] BIT NOT NULL, -- (Ativo/Inativo)
	CONSTRAINT [PK_USER] PRIMARY KEY([ID]),
	CONSTRAINT [FK_USER_PAPEL] FOREIGN KEY([IdPapel]) REFERENCES TB_PAPEL([ID]),
	CONSTRAINT [FK_USER_NVPAPEL] FOREIGN KEY([IdNivel]) REFERENCES TB_NVPAPEL([ID]),
	CONSTRAINT [FK_USER_RESPONSABILIDADE] FOREIGN KEY([IdResponsabilidade]) REFERENCES TB_RESPONSABILIDADE([ID]),
)
GO

-- TABLE LOGIN
CREATE TABLE [dbo].[TB_LOGIN](
	[ID] INT IDENTITY NOT NULL,
	[IdUser] INT NOT NULL,
	[Username] VARCHAR(30) NOT NULL,
	[Senha] VARCHAR(32) NOT NULL,
	[Status] BIT NOT NULL, -- (Ativo/Inativo)
	CONSTRAINT [PK_LOGIN] PRIMARY KEY([ID]),
	CONSTRAINT [FK_LOGIN_USER] FOREIGN KEY([IdUser]) REFERENCES TB_USER([ID])
)
GO

-- TABLE PAIS
CREATE TABLE [dbo].[TB_PAIS](
	[ID] INT IDENTITY NOT NULL,
	[Nome] VARCHAR(50) NOT NULL,
	[Sigla] CHAR(3) NOT NULL,
	CONSTRAINT [PK_PAIS] PRIMARY KEY([ID])
)
GO

-- TABLE UNIDADE
CREATE TABLE [dbo].[TB_UNIDADE](
	[ID] INT IDENTITY NOT NULL,
	[IdPais] INT NOT NULL,
	[Nome] VARCHAR(50) NOT NULL,
	[EstSigla] CHAR(2) NOT NULL,
	CONSTRAINT [PK_UNIDADE] PRIMARY KEY([ID]),
	CONSTRAINT [FK_UNIDADE_PAIS] FOREIGN KEY([IdPais]) REFERENCES TB_PAIS([ID])
)
GO

-- TABLE TRIBO
CREATE TABLE [dbo].[TB_TRIBO](
	[ID] INT IDENTITY NOT NULL,
	[Logo] VARCHAR(200) NULL,
	[Nome] VARCHAR(50) NOT NULL,
	[Status] BIT NOT NULL, -- (Ativo/Inativo)
	CONSTRAINT [PK_TRIBO] PRIMARY KEY([ID])
)
GO

-- TABLE SQUAD
CREATE TABLE [dbo].[TB_SQUAD](
	[ID] INT IDENTITY NOT NULL,
	[IdUnidade] INT NOT NULL,
	[IdTribo] INT NULL,
	[Logo] VARCHAR(200) NULL,
	[Nome] VARCHAR(50) NOT NULL,
	[Status] BIT NOT NULL, -- (Ativo/Inativo)
	CONSTRAINT [PK_SQUAD] PRIMARY KEY([ID]),
	CONSTRAINT [FK_SQUAD_TRIBO] FOREIGN KEY([IdTribo]) REFERENCES TB_TRIBO([ID]),
	CONSTRAINT [FK_SQUAD_UNIDADE] FOREIGN KEY([IdUnidade]) REFERENCES TB_UNIDADE([ID])
)
GO

-- TABLE MEMBRO_SQUAD
CREATE TABLE [dbo].[TB_MEMBRO_SQUAD](
	[ID] INT IDENTITY NOT NULL,
	[IdUser] INT NOT NULL,
	[IdSquad] INT NULL,
	CONSTRAINT [PK_MEMBRO_SQUAD] PRIMARY KEY([ID]),
	CONSTRAINT [FK_MEMBRO_SQUAD_USER] FOREIGN KEY([IdUser]) REFERENCES TB_USER([ID]),
	CONSTRAINT [FK_MEMBRO_SQUAD_SQUAD] FOREIGN KEY([IdSquad]) REFERENCES TB_SQUAD([ID])
)
GO


-- TABLE MENTOR TRIBO
CREATE TABLE [dbo].[TB_MENTOR_TRIBO](
	[ID] INT IDENTITY NOT NULL,
	[IdTribo] INT NOT NULL,
	[IdUser] INT NOT NULL,
	CONSTRAINT [PK_MENTORTRIBO] PRIMARY KEY([ID]),
	CONSTRAINT [FK_MENTORTRIBO_TRIBO] FOREIGN KEY([IdTribo]) REFERENCES TB_TRIBO([ID]),
    CONSTRAINT [FK_MENTORTRIBO_MENTOR] FOREIGN KEY([IdUser]) REFERENCES TB_USER([ID])
)
GO

-- TABLE MENTOR SQUAD
CREATE TABLE [dbo].[TB_MENTOR_SQUAD](
	[ID] INT IDENTITY NOT NULL,
	[IdSquad] INT NOT NULL,
	[IdUser] INT NOT NULL,
	CONSTRAINT [PK_MENTORSQUAD] PRIMARY KEY([ID]),
	CONSTRAINT [FK_MENTORSQUAD_SQUAD] FOREIGN KEY([IdSquad]) REFERENCES TB_SQUAD([ID]),
	CONSTRAINT [FK_MENTORSQUAD_USER] FOREIGN KEY(IdUser) REFERENCES TB_USER([ID])
)
GO