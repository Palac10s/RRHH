USE [master]
GO
/****** Object:  Database [GestionRRHH]    Script Date: 11/14/2024 10:16:28 PM ******/
CREATE DATABASE [GestionRRHH]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'GestionRRHH', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GestionRRHH.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'GestionRRHH_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL16.SQLEXPRESS\MSSQL\DATA\GestionRRHH_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT, LEDGER = OFF
GO
ALTER DATABASE [GestionRRHH] SET COMPATIBILITY_LEVEL = 160
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [GestionRRHH].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [GestionRRHH] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [GestionRRHH] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [GestionRRHH] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [GestionRRHH] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [GestionRRHH] SET ARITHABORT OFF 
GO
ALTER DATABASE [GestionRRHH] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [GestionRRHH] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [GestionRRHH] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [GestionRRHH] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [GestionRRHH] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [GestionRRHH] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [GestionRRHH] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [GestionRRHH] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [GestionRRHH] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [GestionRRHH] SET  DISABLE_BROKER 
GO
ALTER DATABASE [GestionRRHH] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [GestionRRHH] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [GestionRRHH] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [GestionRRHH] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [GestionRRHH] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [GestionRRHH] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [GestionRRHH] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [GestionRRHH] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [GestionRRHH] SET  MULTI_USER 
GO
ALTER DATABASE [GestionRRHH] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [GestionRRHH] SET DB_CHAINING OFF 
GO
ALTER DATABASE [GestionRRHH] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [GestionRRHH] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [GestionRRHH] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [GestionRRHH] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [GestionRRHH] SET QUERY_STORE = ON
GO
ALTER DATABASE [GestionRRHH] SET QUERY_STORE (OPERATION_MODE = READ_WRITE, CLEANUP_POLICY = (STALE_QUERY_THRESHOLD_DAYS = 30), DATA_FLUSH_INTERVAL_SECONDS = 900, INTERVAL_LENGTH_MINUTES = 60, MAX_STORAGE_SIZE_MB = 1000, QUERY_CAPTURE_MODE = AUTO, SIZE_BASED_CLEANUP_MODE = AUTO, MAX_PLANS_PER_QUERY = 200, WAIT_STATS_CAPTURE_MODE = ON)
GO
USE [GestionRRHH]
GO
/****** Object:  Table [dbo].[Competencias]    Script Date: 11/14/2024 10:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Competencias](
	[CompetenciaID] [int] NOT NULL,
	[ContactoID] [int] NULL,
	[Competencia] [varchar](255) NULL,
	[Dominio] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[CompetenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacto]    Script Date: 11/14/2024 10:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacto](
	[ContactoID] [int] NOT NULL,
	[NombreCompleto] [varchar](255) NULL,
	[TelefonoMovil] [varchar](20) NULL,
	[Email] [varchar](100) NULL,
	[Departamento] [varchar](100) NULL,
	[Objetivo] [varchar](255) NULL,
	[Foto] [varbinary](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[ContactoID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ExperienciaProfesional]    Script Date: 11/14/2024 10:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ExperienciaProfesional](
	[ExperienciaID] [int] NOT NULL,
	[ContactoID] [int] NULL,
	[Cargo] [varchar](255) NULL,
	[Institucion] [varchar](255) NULL,
	[AnioInicio] [int] NULL,
	[AnioFin] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[ExperienciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FormacionAcademica]    Script Date: 11/14/2024 10:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FormacionAcademica](
	[FormacionID] [int] NOT NULL,
	[ContactoID] [int] NULL,
	[Institucion] [varchar](255) NULL,
	[Titulo] [varchar](255) NULL,
	[AnioInicio] [int] NULL,
	[AnioFin] [int] NULL,
	[Departamento] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[FormacionID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habilidades]    Script Date: 11/14/2024 10:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habilidades](
	[HabilidadID] [int] NOT NULL,
	[ContactoID] [int] NULL,
	[Habilidad] [varchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[HabilidadID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Referencias]    Script Date: 11/14/2024 10:16:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Referencias](
	[ReferenciaID] [int] NOT NULL,
	[ContactoID] [int] NULL,
	[Nombre] [varchar](255) NULL,
	[Telefono] [varchar](20) NULL,
	[TipoReferencia] [varchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ReferenciaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Competencias]  WITH CHECK ADD FOREIGN KEY([ContactoID])
REFERENCES [dbo].[Contacto] ([ContactoID])
GO
ALTER TABLE [dbo].[ExperienciaProfesional]  WITH CHECK ADD FOREIGN KEY([ContactoID])
REFERENCES [dbo].[Contacto] ([ContactoID])
GO
ALTER TABLE [dbo].[FormacionAcademica]  WITH CHECK ADD FOREIGN KEY([ContactoID])
REFERENCES [dbo].[Contacto] ([ContactoID])
GO
ALTER TABLE [dbo].[Habilidades]  WITH CHECK ADD FOREIGN KEY([ContactoID])
REFERENCES [dbo].[Contacto] ([ContactoID])
GO
ALTER TABLE [dbo].[Referencias]  WITH CHECK ADD FOREIGN KEY([ContactoID])
REFERENCES [dbo].[Contacto] ([ContactoID])
GO
USE [master]
GO
ALTER DATABASE [GestionRRHH] SET  READ_WRITE 
GO
