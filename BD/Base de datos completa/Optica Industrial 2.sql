USE [master]
GO
/****** Object:  Database [Optica Industrial]    Script Date: 16/04/2018 02:31:39 p. m. ******/
CREATE DATABASE [Optica Industrial]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Optica Industrial', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Optica Industrial.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Optica Industrial_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\Optica Industrial_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Optica Industrial] SET COMPATIBILITY_LEVEL = 130
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Optica Industrial].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Optica Industrial] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Optica Industrial] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Optica Industrial] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Optica Industrial] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Optica Industrial] SET ARITHABORT OFF 
GO
ALTER DATABASE [Optica Industrial] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Optica Industrial] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Optica Industrial] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Optica Industrial] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Optica Industrial] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Optica Industrial] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Optica Industrial] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Optica Industrial] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Optica Industrial] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Optica Industrial] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Optica Industrial] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Optica Industrial] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Optica Industrial] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Optica Industrial] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Optica Industrial] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Optica Industrial] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Optica Industrial] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Optica Industrial] SET RECOVERY FULL 
GO
ALTER DATABASE [Optica Industrial] SET  MULTI_USER 
GO
ALTER DATABASE [Optica Industrial] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Optica Industrial] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Optica Industrial] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Optica Industrial] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Optica Industrial] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Optica Industrial', N'ON'
GO
ALTER DATABASE [Optica Industrial] SET QUERY_STORE = OFF
GO
USE [Optica Industrial]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Optica Industrial]
GO
/****** Object:  Table [dbo].[ASISTENTE]    Script Date: 16/04/2018 02:31:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ASISTENTE](
	[ID Asistente] [int] NOT NULL,
	[Nombre] [varchar](35) NOT NULL,
	[Apellido] [varchar](35) NOT NULL,
	[Tipo de Asistente] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [varchar](55) NOT NULL,
	[Email] [varchar](35) NOT NULL,
	[Acceso] [varchar](50) NOT NULL,
	[Usuario] [varchar](25) NOT NULL,
	[Contrasena] [varchar](20) NOT NULL,
 CONSTRAINT [PK_ASISTENTE1] PRIMARY KEY CLUSTERED 
(
	[ID Asistente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[COMPRA]    Script Date: 16/04/2018 02:31:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[COMPRA](
	[Id Compra] [int] NOT NULL,
	[Id Examen] [int] NULL,
	[Id Producto] [int] NULL,
	[Fecha de Compra] [varchar](50) NULL,
	[Total] [money] NULL,
 CONSTRAINT [PK_COMPRA] PRIMARY KEY CLUSTERED 
(
	[Id Compra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DOCTOR]    Script Date: 16/04/2018 02:31:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DOCTOR](
	[Id Doctor] [int] NOT NULL,
	[Nombre] [varchar](35) NOT NULL,
	[Apellido] [varchar](35) NOT NULL,
	[Edad] [int] NOT NULL,
	[Direccion] [varchar](55) NOT NULL,
	[Telefono] [int] NOT NULL,
	[Matricula] [int] NOT NULL,
	[Especialidad] [varchar](20) NOT NULL,
	[Email] [varchar](30) NOT NULL,
	[Acceso] [varchar](50) NOT NULL,
	[Usuario] [varchar](25) NOT NULL,
	[Contrasena] [varchar](20) NOT NULL,
 CONSTRAINT [PK_DOCTOR1] PRIMARY KEY CLUSTERED 
(
	[Id Doctor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EXAMEN]    Script Date: 16/04/2018 02:31:39 p. m. ******/
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
/****** Object:  Table [dbo].[PACIENTE]    Script Date: 16/04/2018 02:31:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PACIENTE](
	[Id Paciente] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Apellido] [varchar](50) NOT NULL,
	[Tipo de Paciente] [varchar](50) NOT NULL,
	[Edad] [int] NOT NULL,
	[Telefono] [int] NOT NULL,
	[Direccion] [varchar](50) NOT NULL,
	[Email] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PACIENTE1_1] PRIMARY KEY CLUSTERED 
(
	[Id Paciente] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PRODUCTO]    Script Date: 16/04/2018 02:31:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PRODUCTO](
	[Id Producto] [int] NOT NULL,
	[Nombre] [varchar](50) NOT NULL,
	[Marca] [varchar](50) NOT NULL,
	[Descripcion] [varchar](max) NOT NULL,
	[Costo] [money] NULL,
 CONSTRAINT [PK_PRODUCTOS] PRIMARY KEY CLUSTERED 
(
	[Id Producto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[ASISTENTE] ([ID Asistente], [Nombre], [Apellido], [Tipo de Asistente], [Edad], [Telefono], [Direccion], [Email], [Acceso], [Usuario], [Contrasena]) VALUES (1, N'Alberto', N'Vega Medina', N'Vender lentes', 20, 35457852, N'Zona Industrial Mendez #7447', N'albertoVM@gmail.com', N'ASISTENTE', N'alberto74', N'qtc#alberto')
GO
INSERT [dbo].[ASISTENTE] ([ID Asistente], [Nombre], [Apellido], [Tipo de Asistente], [Edad], [Telefono], [Direccion], [Email], [Acceso], [Usuario], [Contrasena]) VALUES (2, N'Erick', N'Mejia', N'Administrar Productos', 22, 34859652, N'Lomas verdes #4535', N'erick_b_mejia@yahoo.com.mx', N'ASISTENTE', N'erick2274', N'klinuxmint')
GO
INSERT [dbo].[COMPRA] ([Id Compra], [Id Examen], [Id Producto], [Fecha de Compra], [Total]) VALUES (1, 1, 3, N'sábado, 14 de abril de 2018', 209.0000)
GO
INSERT [dbo].[COMPRA] ([Id Compra], [Id Examen], [Id Producto], [Fecha de Compra], [Total]) VALUES (2, 1, 3, N'sábado, 14 de abril de 2018', 209.0000)
GO
INSERT [dbo].[COMPRA] ([Id Compra], [Id Examen], [Id Producto], [Fecha de Compra], [Total]) VALUES (3, 2, 2, N'sábado, 14 de abril de 2018', 1225.0000)
GO
INSERT [dbo].[COMPRA] ([Id Compra], [Id Examen], [Id Producto], [Fecha de Compra], [Total]) VALUES (4, 1, 1, N'sábado, 14 de abril de 2018', 3849.0000)
GO
INSERT [dbo].[COMPRA] ([Id Compra], [Id Examen], [Id Producto], [Fecha de Compra], [Total]) VALUES (5, 1, 2, N'martes, 17 de abril de 2018', 1250.0000)
GO
INSERT [dbo].[DOCTOR] ([Id Doctor], [Nombre], [Apellido], [Edad], [Direccion], [Telefono], [Matricula], [Especialidad], [Email], [Acceso], [Usuario], [Contrasena]) VALUES (0, N'NULL', N'NULL', 0, N'NULL', 0, 0, N'NULL', N'NULL', N'DOCTOR', N'NULL', N'NULL')
GO
INSERT [dbo].[DOCTOR] ([Id Doctor], [Nombre], [Apellido], [Edad], [Direccion], [Telefono], [Matricula], [Especialidad], [Email], [Acceso], [Usuario], [Contrasena]) VALUES (1, N'José Alonso', N'Gutiérrez Gómez', 27, N'Trinidad Árvizu #3092 D', 33334611, 991415238, N'Cirugía General', N'Jose_GG@hotmail.com', N'DOCTOR', N'Jose_Gomez', N'jg#12g')
GO
INSERT [dbo].[DOCTOR] ([Id Doctor], [Nombre], [Apellido], [Edad], [Direccion], [Telefono], [Matricula], [Especialidad], [Email], [Acceso], [Usuario], [Contrasena]) VALUES (2, N'Francisco', N'Zuñiga', 25, N'Ramon Alcorta #3012', 36638627, 758465965, N'Oftalmólogo', N'Francisco_z_@gmail.com', N'DOCTOR', N'Frank11Z', N'kli11zuniga')
GO
INSERT [dbo].[EXAMEN] ([Id Paciente], [Id Doctor], [Id Examen], [Observaciones], [Fecha de Examen], [Costo]) VALUES (0, 0, 0, N'NULL', N'lunes, 1 de enero de 2018', 0.0000)
GO
INSERT [dbo].[EXAMEN] ([Id Paciente], [Id Doctor], [Id Examen], [Observaciones], [Fecha de Examen], [Costo]) VALUES (1, 2, 1, N'El paciente tiene O.D. Eje 12° Cilindro -1.25 Esfera +3.00 Adicción 1.25 Prima 2.50 DP BN
 O.I. Eje 170° Cilindro -0.25 Esfera +1.50 Adicción 1.25 3.00 DP BN', N'jueves, 12 de abril de 2018', 50.0000)
GO
INSERT [dbo].[EXAMEN] ([Id Paciente], [Id Doctor], [Id Examen], [Observaciones], [Fecha de Examen], [Costo]) VALUES (2, 1, 2, N'OD -0.50 Esf -2.00 Cil Eje 20°
 OI -2.00 Esf -1.25 Cil Eje 175°', N'sábado, 14 de abril de 2018', 25.0000)
GO
INSERT [dbo].[PACIENTE] ([Id Paciente], [Nombre], [Apellido], [Tipo de Paciente], [Edad], [Telefono], [Direccion], [Email]) VALUES (0, N'NULL', N'NULL', N'NULL', 0, 0, N'NULL', N'NULL')
GO
INSERT [dbo].[PACIENTE] ([Id Paciente], [Nombre], [Apellido], [Tipo de Paciente], [Edad], [Telefono], [Direccion], [Email]) VALUES (1, N'Angelica', N'Victoria Sains', N'Empresa Lob', 24, 33147854, N'Chapultepec #7557', N'angie_vs@hotmail.com')
GO
INSERT [dbo].[PACIENTE] ([Id Paciente], [Nombre], [Apellido], [Tipo de Paciente], [Edad], [Telefono], [Direccion], [Email]) VALUES (2, N'Benjamín', N'Hernandez', N'Particular', 23, 78451285, N'Del salto #3423', N'bh_11@yahoo.com.mx ')
GO
INSERT [dbo].[PRODUCTO] ([Id Producto], [Nombre], [Marca], [Descripcion], [Costo]) VALUES (0, N'NULL', N'NULL', N'NULL', 0.0000)
GO
INSERT [dbo].[PRODUCTO] ([Id Producto], [Nombre], [Marca], [Descripcion], [Costo]) VALUES (1, N'Lente Oftálmico', N'CONVERSE G073 ', N'Diámetro del lente: 52 mm Tipo De Armazon: Medio Armazon
 Color: Azul', 3799.0000)
GO
INSERT [dbo].[PRODUCTO] ([Id Producto], [Nombre], [Marca], [Descripcion], [Costo]) VALUES (2, N'Lente Oftálmico', N'CALVIN KLEIN 7723', N'Diámetro del lente: 52 mm Tipo De Armazon: Medio Armazon
 Color: Negro', 1200.0000)
GO
INSERT [dbo].[PRODUCTO] ([Id Producto], [Nombre], [Marca], [Descripcion], [Costo]) VALUES (3, N'Limpiador Para Lentes ', N'OPTICLEAR', N'Solución Limpiadora 250 ml + Micro fibra real bolsa
 No contiene alcohol', 159.0000)
GO
ALTER TABLE [dbo].[COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_COMPRA_EXAMEN] FOREIGN KEY([Id Examen])
REFERENCES [dbo].[EXAMEN] ([Id Examen])
GO
ALTER TABLE [dbo].[COMPRA] CHECK CONSTRAINT [FK_COMPRA_EXAMEN]
GO
ALTER TABLE [dbo].[COMPRA]  WITH CHECK ADD  CONSTRAINT [FK_COMPRA_PRODUCTO] FOREIGN KEY([Id Producto])
REFERENCES [dbo].[PRODUCTO] ([Id Producto])
GO
ALTER TABLE [dbo].[COMPRA] CHECK CONSTRAINT [FK_COMPRA_PRODUCTO]
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
/****** Object:  StoredProcedure [dbo].[reporteFactura]    Script Date: 16/04/2018 02:31:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[reporteFactura]

@idCompra int
AS
SELECT 
COMPRA.[Id Compra], COMPRA.[Fecha de Compra], EXAMEN.[Id Examen], EXAMEN.Costo AS EXAMEN,
PRODUCTO.[Id Producto], PRODUCTO.Nombre, PRODUCTO.Marca, PRODUCTO.Descripcion, PRODUCTO.Costo
AS PRODUCTO, COMPRA.Total
FROM COMPRA INNER JOIN PRODUCTO
ON PRODUCTO.[Id Producto] = COMPRA.[Id Producto]
INNER JOIN EXAMEN
ON EXAMEN.[Id Examen] = COMPRA.[Id Examen]
GO
/****** Object:  StoredProcedure [dbo].[reporteFacturaCompra]    Script Date: 16/04/2018 02:31:39 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[reporteFacturaCompra]

@idCompra int
AS
SELECT COMPRA.[Id Compra] AS IdCompra, COMPRA.[Fecha de Compra] AS FechaCompra, EXAMEN.[Id Examen] AS IdExamen,
EXAMEN.Costo AS costoExamen, PRODUCTO.[Id Producto] AS IdProducto, PRODUCTO.Nombre, PRODUCTO.Marca, 
PRODUCTO.Descripcion, PRODUCTO.Costo AS CostoProducto, 
COMPRA.Total
FROM COMPRA INNER JOIN PRODUCTO
ON PRODUCTO.[Id Producto] = COMPRA.[Id Producto]
INNER JOIN EXAMEN
ON EXAMEN.[Id Examen] = COMPRA.[Id Examen]
WHERE COMPRA.[Id Compra]=@idCompra
GO
USE [master]
GO
ALTER DATABASE [Optica Industrial] SET  READ_WRITE 
GO
