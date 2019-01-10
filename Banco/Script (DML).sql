USE SCOPIO
GO


-- INSERT NIVEL PAPEL
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('TREINEE', 0)
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('J�NIOR', 1)
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('S�NIOR', 2)
INSERT INTO [TB_NVPAPEL]([Desc], [Nivel]) VALUES('PLENO', 3)

-- INSERT PAPEL
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ESTAGI�RIO DE PROGRAMA��O', 0)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('PROGRAMADOR',1)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA DE NEG�CIOS', 2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA DE QUALIDADE',2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA DE SISTEMAS', 2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ANALISTA PROGRAMADOR', 2)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ARQUITETO DE TESTES', 3)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ARQUITETO UX/UI', 3)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('ENGENHEIRO DE SOFTWARE', 3)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('COORDENADOR DE DESENVOLVIMENTO', 4)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('GERENTE DE TI', 5)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('RECURSOS HUMANOS', 6)
INSERT INTO [TB_PAPEL]([Desc], [Nivel]) VALUES('CEO', 7)
GO

--INSERT RESPONSABILIDADE
INSERT INTO [TB_RESPONSABILIDADE]([Nome]) VALUES('MENTOR')
INSERT INTO [TB_RESPONSABILIDADE]([Nome]) VALUES('COACHING')
INSERT INTO [TB_RESPONSABILIDADE]([Nome]) VALUES('CONSULTOR')
GO

-- INSERT USER
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'ALEX BARLETTA ARA�JO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'AMANDA MAYARA DE ARAUJO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'ANA CLARA MARSON RIOS BORDINHON', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'ANDERSON DE CARVALHO BERNAB�', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(11, 3, 1, NULL, 'ANDERSON SOLDEIRA DE LIMA CAVALCANTE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 3, NULL , NULL, 'AULES RONI JOBSTRAIBIZER', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'CAL�O DE ANTONIO CACIANO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'CLOTER GON�ALVES BARBOSA JUNIOR', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'DANIEL MEIRELES TOMAZINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'DANIELA OLIVEIRA FRANCISCO TEIXEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, NULL, 'DANILO CESAR DE SOUZA FERREIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'DELEON HENRIQUE DA SILVA PINTO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'DENISE NOGUEIRA DOS SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(3, 4, NULL, NULL, 'EDNEI BETTI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(9, 3, NULL, NULL, 'EDUARDO ALBERTO DO SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6 ,3, NULL, NULL, 'ELAINE VIANA COSTA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'EMERSON CARLOS DUARTE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'EVAIR PEREIRA SOUSA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'EVANDRO RIBEIRO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(3, 2, NULL, NULL, 'EVERTON LIMA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, NULL, 'EVERTON LUIZ FERREIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'FABIO MASSARETTO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'F�BIO VIEIRA GON�ALVES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, NULL, 'FELIPE DE MELLO OLIVEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'FERNANDA LU�ZA CONTI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(7, 4, NULL, NULL, 'FERNANDA MARIA DUARTE VIEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'FERNANDO ALC�NTARA GARCIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'FERNANDO BERSTECHER AJLUNE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'FERNANDO JUNIO DA SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(9, 3, 2, NULL, 'FERNANDO MENDES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'FILIPE DE OLIVEIRA RIBEIRO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'FILIPE PEREIRA COLANERI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'GABRIEL BRUNO TRALDI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(2, 2, NULL, NULL, 'GABRIEL WILLIAM GALDINO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'GEOVANI LIMA AZEVEDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, NULL, 'GESSIANE DA SILVIA MARTINELLE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'GIOVANA SELEIO VALINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'GL�BER MICHEL ALVES SCHIAVO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'GREGORI BRUNO FELICIO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'GUILHERME BORDALLO DE ALMEIDA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'GUILHERME CESTAROLLI SELEGUIM', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 4, NULL, NULL, 'GUSTAVO SERRACCHIANI FERRARI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(10, 3, 1, NULL, 'HENRIQUE FANTATHO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'ISAC DANIEL FILDELFLAVIO PETINATE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'ITALO BIGUZI DUARTE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'JHONATAN VIN�CIUS MARTINS DOS SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'JULIO C�SAR MONTALV�O', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 2, NULL, NULL, 'KAIQUE GUSTAVO RIBEIRO DO PRADO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'LEANDRO CODARIN', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, NULL, 'LEANDRO MARQUES DE OLIVEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'LEILA SANTANA FERREIRA FIGUEREDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'LUCAS MARQUES DA SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, NULL, 'LUCAS T�MOLO CONTESINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 2, NULL, NULL, 'LUCAS VENDRAMIN ANTUNES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 3, NULL, NULL, 'LUCIANA MARTINS PONTEL BAHIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'LUCIO FLAVIO FRANSOIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'LU�S ANTONIO PRADO LAN�A', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'LUIZ CARLOS CECATTI J�NIOR', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 3, NULL, NULL, 'MARA CRISTINA DA ROSA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'MARCO AURELIO DE SOUZA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'MARIO JORGE DE ARAUJO BARBOSA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, NULL, 'MATEUS AUGUSTO DO AMARAL', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'MATEUS GON�ALVES BRITO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, NULL, 'MATHEUS BIO SALLES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'MIKAERI OHANA ESTEVAM CANDIDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'MURILO EDUARDO BACAGINI SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'NICOLAS TOSATTI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'OTAVIO AUGUSTO TOLEDO DE PAULA CIPRO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 4, NULL, NULL, 'PABLO ZAMPA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(8, 3, NULL, NULL, 'PAULO ROG�RIO SPIANDORIM MATTIUZZO  ', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'PEDRO DE SOUZA MORAES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'PEDRO MIETTO BRUINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, NULL, 'PEDRO OCTAVIO RODRIGUES DE ANDRADE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'RAFAEL DE MOURA ALVES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, NULL, 'RAFAEL LINO DOS SANTOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'RAFAEL ZANCANI FERCONDINI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(10, 4, NULL, NULL, 'RAFAELA GIROTTE SAMPAIO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'RENAN TEIXEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(9, 3, NULL, NULL, 'RICARDO ALVES DE SOUZA FRANCISCO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'RICARDO APARECIDO GARBATI', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'RICARDO CRISTIANO TAPIA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'RICARDO MARCEL GIARETTA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(3, 3, NULL, NULL, 'RICARDO MEAN', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'RICARDO RAMOS', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'RODRIGO ALVES FERREIRA DE BRITO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'SERGIO DO CARMO TORRES', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 3, NULL, NULL, 'SILVIA CRISTINA AROUCHE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'STEPHANIE BIANCA BRESCANCIN', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(5, 3, NULL, NULL, 'THIAGO MANSONETTO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'TIAGO DE OLIVEIRA TEIXEIRA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(4, 4, NULL, NULL, 'TIAGO HENRIQUE BERNARDO', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 2, NULL, NULL, 'VALDEMIR PRAXEDES TRINDADE', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 2, NULL, NULL, 'VANDERLEI NERES DA SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(1, 1, NULL, NULL, 'VANDERLEY NERES DE SILVA', NULL, NULL, 1)
INSERT INTO [TB_USER]([IdPapel], [IdNivel], [IdResponsabilidade], [Avatar], [Nome], [Email], [Tel], [Status]) VALUES(6, 4, NULL, NULL, 'WILLIAM HARTUNG', NULL, NULL, 1)
GO

-- CRIA ASSOCIA��O ENTRE USU�RIO E LOGIN
----------------------------------------------------------------
-- USER GLEBER
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (38,'ggleber', @HASH, 1)
GO

-- USER AMARAL
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (62,'mamaral', @HASH, 1)
GO

-- USER FERNANDA
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (25,'fconti', @HASH, 1)
GO

-- USER ALEX
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (1,'abarletta', @HASH, 1)
GO

-- USER CALEO
DECLARE @HASH VARCHAR(32);
SET @HASH = '123'
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
SET @HASH = CONVERT(VARCHAR(32), HashBytes('MD5', @HASH), 2)
INSERT INTO [TB_LOGIN]([IdUser], [Username], [Senha], [Status])
VALUES (7,'ccaciano', @HASH, 1)
GO
----------------------------------------------------------------

-- INSERT TRIBO
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDP EFINANCE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDP RDV', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS BRINKS', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS EVOLUTIVAS MAPFRE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS FINAMAX', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS NN MAPFRE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS PASSARELA', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS SEQUOIA', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CDS UNIBANCO', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CONSULTORIA', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'CSS MAPFRE', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'FORMA��O', 1)
INSERT INTO [TB_TRIBO]([Logo], [Nome], [Status]) VALUES(NULL, 'OPERA��O', 1)
GO

-- INSERT PAIS
INSERT INTO [TB_PAIS]([Nome], [Sigla]) VALUES('BRASIL', 'BRA')
INSERT INTO [TB_PAIS]([Nome], [Sigla]) VALUES('ESTADOS UNIDOS', 'EUA')
GO

-- INSERT UNIDADE
INSERT INTO [TB_UNIDADE]([IdPais], [Nome], [EstSigla]) VALUES(1, 'VICERI OSORIO', 'SP')
INSERT INTO [TB_UNIDADE]([IdPais], [Nome], [EstSigla]) VALUES(1, 'VICERI JOBIM', 'SP')
GO

-- INSERT SQUAD
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'LEMURES MUTUALISTAS', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'BUG HUNTERS', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'NERD BUNKERS', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, 12, NULL,'ALFA NOOB', 1)
INSERT INTO [TB_SQUAD]([IdUnidade], [IdTribo], [Logo], [Nome], [Status]) VALUES(1, NULL, NULL,'MARA CRISTINA DA ROSA', 1)
GO

-- ASSOCIA��O SQUAD "LEMURES"
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(7, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(1, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(25, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(62, 1)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(38, 1)
GO

-- ASSOCIA��O SQUAD BUG HUNTERS
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(13, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(50, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(64, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(57, 2)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(93, 2)
GO

-- ASSOCIA��O SQUAD NERD BUNKERS
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(29, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(44, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(53, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(63, 3)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(72, 3)
GO

-- ASSOCIA��O SQUAD ALFA NOOB
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(23, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(21, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(37, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(46, 4)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(71, 4)
GO

-- ASSOCIA��O SQUAD "MARA CRISTINA DA ROSA"
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(59, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(73, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(19, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(56, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(66, 5)
INSERT INTO [TB_MEMBRO_SQUAD]([IdUser], [IdSquad]) VALUES(40, 5)
GO
