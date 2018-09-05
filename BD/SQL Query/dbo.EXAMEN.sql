USE [Optica Industrial]
GO

/****** Object:  Table [dbo].[EXAMEN]    Script Date: 16/04/2018 01:58:42 p. m. ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[EXAMEN](
	[Id Paciente] [int] NOT NULL,
	[Id Doctor] [int] NOT NULL,
	[Id Examen] [int] NOT NULL,
	[Observaciones] [varchar](max) NOT NULL,
	[Fecha de Examen] [varchar](50) NOT NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_EXAMEN1] PRIMARY KEY CLUSTERED 
(
	[Id Examen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[EXAMEN]  WITH CHECK ADD  CONSTRAINT [FK_EXAMEN_DOCTOR] FOREIGN KEY([Id Doctor])
REFERENCES [dbo].[DOCTOR] ([Id Doctor])
GO

ALTER TABLE [dbo].[EXAMEN] CHECK CONSTRAINT [FK_EXAMEN_DOCTOR]
GO

ALTER TABLE [dbo].[EXAMEN]  WITH CHECK ADD  CONSTRAINT [FK_EXAMEN_PACIENTE] FOREIGN KEY([Id Paciente])
REFERENCES [dbo].[PACIENTE] ([Id Paciente])
GO

ALTER TABLE [dbo].[EXAMEN] CHECK CONSTRAINT [FK_EXAMEN_PACIENTE]
GO

