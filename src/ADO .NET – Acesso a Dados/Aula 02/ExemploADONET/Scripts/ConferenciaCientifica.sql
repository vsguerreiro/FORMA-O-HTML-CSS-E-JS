SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Artigos](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Titulo] [varchar](50) NOT NULL,
	[Abstract] [varchar](50) NULL,
	[AutorId] [int] NOT NULL,
	[PalestranteId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Palestras]    Script Date: 24/01/2024 21:51:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Palestras](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AutorId] [int] NOT NULL,
	[ArtigoId] [int] NOT NULL,
	[DataEHora] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pessoas]    Script Date: 24/01/2024 21:51:45 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pessoas](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nome] [varchar](50) NOT NULL,
	[Especialidade] [varchar](50) NULL,
	[Filiacao] [varchar](50) NULL,
	[NumeroInscricao] [int] NULL,
	[Telefone] [varchar](14) NULL,
	[Participacao] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Artigos] ON 

INSERT [dbo].[Artigos] ([Id], [Titulo], [Abstract], [AutorId], [PalestranteId]) VALUES (1, N'Artigo 01', N'Abstract 01', 1, 1)
SET IDENTITY_INSERT [dbo].[Artigos] OFF
GO
SET IDENTITY_INSERT [dbo].[Pessoas] ON 

INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (1, N'Maria Casada', N'Medicina', N'ULISBOA', 122233, N'123456789', N'Autor')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (2, N'Pedro', N'Engenharia', N'ISCTE', 4321, N'333', N'Palestrante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (6, N'Participante 01', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (7, N'Participante 02', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (8, N'Participante 03', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (9, N'Participante 04', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (10, N'Participante 05', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (11, N'Participante 06', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (12, N'Participante 07', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (13, N'Participante 08', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (14, N'Participante 09', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (15, N'Participante 10', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (16, N'Participante 11', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (17, N'Participante 12', NULL, NULL, NULL, NULL, N'Participante')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (18, N'Joaquim', NULL, NULL, NULL, NULL, N'Autor')
INSERT [dbo].[Pessoas] ([Id], [Nome], [Especialidade], [Filiacao], [NumeroInscricao], [Telefone], [Participacao]) VALUES (20, N'Carlos da Silva', N'Engenheiro', N'USP', 122233, N'987654321', N'Participante')
SET IDENTITY_INSERT [dbo].[Pessoas] OFF
GO
ALTER TABLE [dbo].[Artigos]  WITH CHECK ADD FOREIGN KEY([AutorId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[Artigos]  WITH CHECK ADD FOREIGN KEY([PalestranteId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
ALTER TABLE [dbo].[Palestras]  WITH CHECK ADD FOREIGN KEY([ArtigoId])
REFERENCES [dbo].[Artigos] ([Id])
GO
ALTER TABLE [dbo].[Palestras]  WITH CHECK ADD FOREIGN KEY([AutorId])
REFERENCES [dbo].[Pessoas] ([Id])
GO
USE [master]
GO
ALTER DATABASE [ConferenciaCientifica] SET  READ_WRITE 
GO
