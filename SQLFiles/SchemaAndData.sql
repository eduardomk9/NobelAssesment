USE [Nobel]
GO
/****** Object:  Table [dbo].[CAMPANYA]    Script Date: 20/06/2024 23:30:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CAMPANYA](
	[idScript] [numeric](10, 0) NULL,
	[idRevisor] [numeric](10, 0) NULL,
	[idCampanya] [numeric](10, 0) NOT NULL,
	[nombre] [varchar](50) NULL,
	[descripcion] [varchar](100) NULL,
	[tCreacion] [datetime] NULL,
	[tInicial] [datetime] NULL,
	[tFinal] [datetime] NULL,
	[idListaSujetos] [numeric](10, 0) NULL,
	[tipoCampanya] [numeric](5, 0) NULL,
	[estado] [numeric](5, 0) NULL,
	[acdGroupDefecto] [varchar](15) NULL,
	[wrapup] [numeric](5, 0) NULL,
	[color] [numeric](16, 0) NULL,
	[trunkGroup] [varchar](16) NULL,
	[canal] [numeric](2, 0) NULL,
	[numFax] [varchar](16) NULL,
	[numMovil] [varchar](16) NULL,
	[emailCamp] [varchar](50) NULL,
	[emailUser] [varchar](50) NULL,
	[emailPassword] [varchar](50) NULL,
	[emailServer] [varchar](50) NULL,
	[emailPuertoIn] [numeric](5, 0) NULL,
	[url] [varchar](50) NULL,
	[sEmailSender] [varchar](50) NULL,
	[sEmailUserOut] [varchar](50) NULL,
	[sEmailPasswordOut] [varchar](50) NULL,
	[sEmailServerOut] [varchar](50) NULL,
	[sEmailAliasOut] [varchar](50) NULL,
	[nEmailPuertoOut] [numeric](5, 0) NULL,
	[wCanalPresencial] [numeric](2, 0) NULL,
	[dDiasHistorico] [numeric](10, 0) NULL,
	[bIdIdentificarCliente] [numeric](1, 0) NULL,
	[bPermitirAnonimos] [numeric](1, 0) NULL,
	[bPermitirAltas] [numeric](1, 0) NULL,
	[nCuotaMaxima] [numeric](10, 0) NULL,
	[nNoAnswerTimeout] [numeric](2, 0) NULL,
	[nTipoGrabacion] [numeric](2, 0) NULL,
	[nGestorCola] [numeric](2, 0) NULL,
	[bInsertEnColaCerrada] [bit] NULL,
	[nColaSize] [numeric](5, 0) NULL,
	[nColaTimeout] [int] NULL,
	[nColaPolicy] [numeric](2, 0) NULL,
	[nServiceObjective] [int] NULL,
	[nSLA] [numeric](3, 0) NULL,
	[idSchedule] [numeric](2, 0) NULL,
PRIMARY KEY CLUSTERED 
(
	[idCampanya] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TRANSACCION]    Script Date: 20/06/2024 23:30:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TRANSACCION](
	[idTransaccion] [numeric](10, 0) NOT NULL,
	[idSujeto] [numeric](10, 0) NOT NULL,
	[idServicio] [numeric](10, 0) NOT NULL,
	[idCampanya] [numeric](10, 0) NOT NULL,
	[idSegmento] [numeric](10, 0) NOT NULL,
	[tInicio] [datetime] NULL,
	[tFinal] [datetime] NULL,
	[estado] [numeric](5, 0) NOT NULL,
	[idAgente] [numeric](10, 0) NOT NULL,
	[idFinal] [numeric](10, 0) NULL,
	[tProximoContacto] [datetime] NULL,
	[tReplanificacion] [datetime] NULL,
	[nTAdmin] [int] NULL,
	[nTAdminExcedido] [int] NULL,
	[nTQ] [int] NULL,
	[nCU] [numeric](5, 0) NOT NULL,
	[tCreacion] [datetime] NOT NULL,
	[nOrigenTransaccion] [tinyint] NOT NULL,
	[idTransaccionOriginal] [numeric](10, 0) NULL,
	[idSesionAgente] [numeric](10, 0) NULL,
	[observaciones] [varchar](1000) NULL,
	[idExterno] [varchar](36) NULL,
	[atributoSkill] [varchar](50) NULL,
	[idSkill] [int] NOT NULL,
	[OlsonName] [varchar](64) NULL,
	[LocalShift] [int] NULL,
	[nTDBR] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[idTransaccion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[USUARIO]    Script Date: 20/06/2024 23:30:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[USUARIO](
	[idUsuario] [numeric](10, 0) NOT NULL,
	[apellido1] [varchar](30) NULL,
	[apellido2] [varchar](30) NULL,
	[nombre] [varchar](30) NULL,
	[dni] [varchar](9) NULL,
	[telefono] [varchar](15) NULL,
	[fechaAlta] [datetime] NULL,
	[idTipo] [numeric](5, 0) NULL,
	[login] [varchar](16) NULL,
	[idPuestoTrabajoDefecto] [numeric](10, 0) NULL,
	[fechaCambioEstado] [datetime] NULL,
	[nEstado] [numeric](5, 0) NULL,
	[idEmpleado] [numeric](10, 0) NULL,
	[password] [varbinary](16) NULL,
	[tPasswordSetDate] [datetime] NOT NULL,
	[tPasswordValidPeriod] [int] NOT NULL,
	[bPasswordForceChange] [bit] NOT NULL,
	[tUnlock] [datetime] NOT NULL,
	[email] [nvarchar](250) NULL,
	[credentials] [nvarchar](250) NULL,
	[bUserProtected] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[idUsuario] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CAMPANYA] ([idScript], [idRevisor], [idCampanya], [nombre], [descripcion], [tCreacion], [tInicial], [tFinal], [idListaSujetos], [tipoCampanya], [estado], [acdGroupDefecto], [wrapup], [color], [trunkGroup], [canal], [numFax], [numMovil], [emailCamp], [emailUser], [emailPassword], [emailServer], [emailPuertoIn], [url], [sEmailSender], [sEmailUserOut], [sEmailPasswordOut], [sEmailServerOut], [sEmailAliasOut], [nEmailPuertoOut], [wCanalPresencial], [dDiasHistorico], [bIdIdentificarCliente], [bPermitirAnonimos], [bPermitirAltas], [nCuotaMaxima], [nNoAnswerTimeout], [nTipoGrabacion], [nGestorCola], [bInsertEnColaCerrada], [nColaSize], [nColaTimeout], [nColaPolicy], [nServiceObjective], [nSLA], [idSchedule]) VALUES (NULL, NULL, CAST(1 AS Numeric(10, 0)), N'Campaign1', N'First Campaign', CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(N'2022-12-31T23:59:59.000' AS DateTime), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CAMPANYA] ([idScript], [idRevisor], [idCampanya], [nombre], [descripcion], [tCreacion], [tInicial], [tFinal], [idListaSujetos], [tipoCampanya], [estado], [acdGroupDefecto], [wrapup], [color], [trunkGroup], [canal], [numFax], [numMovil], [emailCamp], [emailUser], [emailPassword], [emailServer], [emailPuertoIn], [url], [sEmailSender], [sEmailUserOut], [sEmailPasswordOut], [sEmailServerOut], [sEmailAliasOut], [nEmailPuertoOut], [wCanalPresencial], [dDiasHistorico], [bIdIdentificarCliente], [bPermitirAnonimos], [bPermitirAltas], [nCuotaMaxima], [nNoAnswerTimeout], [nTipoGrabacion], [nGestorCola], [bInsertEnColaCerrada], [nColaSize], [nColaTimeout], [nColaPolicy], [nServiceObjective], [nSLA], [idSchedule]) VALUES (NULL, NULL, CAST(2 AS Numeric(10, 0)), N'Campaign2', N'Second Campaign', CAST(N'2022-02-01T00:00:00.000' AS DateTime), CAST(N'2022-02-01T00:00:00.000' AS DateTime), CAST(N'2022-12-31T23:59:59.000' AS DateTime), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[CAMPANYA] ([idScript], [idRevisor], [idCampanya], [nombre], [descripcion], [tCreacion], [tInicial], [tFinal], [idListaSujetos], [tipoCampanya], [estado], [acdGroupDefecto], [wrapup], [color], [trunkGroup], [canal], [numFax], [numMovil], [emailCamp], [emailUser], [emailPassword], [emailServer], [emailPuertoIn], [url], [sEmailSender], [sEmailUserOut], [sEmailPasswordOut], [sEmailServerOut], [sEmailAliasOut], [nEmailPuertoOut], [wCanalPresencial], [dDiasHistorico], [bIdIdentificarCliente], [bPermitirAnonimos], [bPermitirAltas], [nCuotaMaxima], [nNoAnswerTimeout], [nTipoGrabacion], [nGestorCola], [bInsertEnColaCerrada], [nColaSize], [nColaTimeout], [nColaPolicy], [nServiceObjective], [nSLA], [idSchedule]) VALUES (NULL, NULL, CAST(3 AS Numeric(10, 0)), N'Campaign3', N'Third Campaign', CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(N'2022-12-31T23:59:59.000' AS DateTime), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(5, 0)), CAST(1 AS Numeric(5, 0)), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(N'2022-01-06T08:00:00.000' AS DateTime), CAST(N'2022-01-06T10:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-01-06T08:00:00.000' AS DateTime), 1, NULL, NULL, N'First transaction', NULL, N'Skill1', 1, N'Olson1', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(2 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(N'2022-02-06T09:00:00.000' AS DateTime), CAST(N'2022-02-06T11:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-02-06T09:00:00.000' AS DateTime), 1, NULL, NULL, N'Second transaction', NULL, N'Skill1', 1, N'Olson1', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(3 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(N'2022-07-01T08:00:00.000' AS DateTime), CAST(N'2022-07-01T10:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-07-01T08:00:00.000' AS DateTime), 1, NULL, NULL, N'Third transaction', NULL, N'Skill2', 2, N'Olson2', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(4 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(N'2022-07-02T09:00:00.000' AS DateTime), CAST(N'2022-07-02T11:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(2 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-07-02T09:00:00.000' AS DateTime), 1, NULL, NULL, N'Fourth transaction', NULL, N'Skill2', 2, N'Olson2', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(5 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(N'2022-08-01T08:00:00.000' AS DateTime), CAST(N'2022-08-01T10:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(3 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-08-01T08:00:00.000' AS DateTime), 1, NULL, NULL, N'Fifth transaction', NULL, N'Skill3', 3, N'Olson3', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(6 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(N'2022-08-02T09:00:00.000' AS DateTime), CAST(N'2022-08-02T11:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(3 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-08-02T09:00:00.000' AS DateTime), 1, NULL, NULL, N'Sixth transaction', NULL, N'Skill3', 3, N'Olson3', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(7 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(N'2022-08-03T08:00:00.000' AS DateTime), CAST(N'2022-08-03T10:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(3 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-08-03T08:00:00.000' AS DateTime), 1, NULL, NULL, N'Seventh transaction', NULL, N'Skill3', 3, N'Olson3', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(8 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(3 AS Numeric(10, 0)), CAST(N'2022-08-04T09:00:00.000' AS DateTime), CAST(N'2022-08-04T11:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(3 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-08-04T09:00:00.000' AS DateTime), 1, NULL, NULL, N'Eighth transaction', NULL, N'Skill3', 3, N'Olson3', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(9 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(N'2022-02-06T09:00:00.000' AS DateTime), CAST(N'2022-02-06T11:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-02-06T09:00:00.000' AS DateTime), 1, NULL, NULL, N'Second transaction', NULL, N'Skill1', 1, N'Olson1', NULL, NULL)
INSERT [dbo].[TRANSACCION] ([idTransaccion], [idSujeto], [idServicio], [idCampanya], [idSegmento], [tInicio], [tFinal], [estado], [idAgente], [idFinal], [tProximoContacto], [tReplanificacion], [nTAdmin], [nTAdminExcedido], [nTQ], [nCU], [tCreacion], [nOrigenTransaccion], [idTransaccionOriginal], [idSesionAgente], [observaciones], [idExterno], [atributoSkill], [idSkill], [OlsonName], [LocalShift], [nTDBR]) VALUES (CAST(10 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(2 AS Numeric(10, 0)), CAST(1 AS Numeric(10, 0)), CAST(N'2022-02-06T09:00:00.000' AS DateTime), CAST(N'2022-02-06T11:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(10, 0)), NULL, NULL, NULL, NULL, NULL, NULL, CAST(1 AS Numeric(5, 0)), CAST(N'2022-02-06T09:00:00.000' AS DateTime), 1, NULL, NULL, N'Second transaction', NULL, N'Skill1', 1, N'Olson1', NULL, NULL)
GO
INSERT [dbo].[USUARIO] ([idUsuario], [apellido1], [apellido2], [nombre], [dni], [telefono], [fechaAlta], [idTipo], [login], [idPuestoTrabajoDefecto], [fechaCambioEstado], [nEstado], [idEmpleado], [password], [tPasswordSetDate], [tPasswordValidPeriod], [bPasswordForceChange], [tUnlock], [email], [credentials], [bUserProtected]) VALUES (CAST(1 AS Numeric(10, 0)), N'Smith', N'Johnson', N'John', N'123456789', N'555-1234', CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), N'john_smith', CAST(1 AS Numeric(10, 0)), CAST(N'2022-01-01T00:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(1 AS Numeric(10, 0)), 0x70617373776F726431, CAST(N'2022-01-01T00:00:00.000' AS DateTime), 30, 0, CAST(N'2022-01-01T00:00:00.000' AS DateTime), N'john@example.com', N'creds1', 0)
INSERT [dbo].[USUARIO] ([idUsuario], [apellido1], [apellido2], [nombre], [dni], [telefono], [fechaAlta], [idTipo], [login], [idPuestoTrabajoDefecto], [fechaCambioEstado], [nEstado], [idEmpleado], [password], [tPasswordSetDate], [tPasswordValidPeriod], [bPasswordForceChange], [tUnlock], [email], [credentials], [bUserProtected]) VALUES (CAST(2 AS Numeric(10, 0)), N'Doe', N'Williams', N'Jane', N'987654321', N'555-5678', CAST(N'2022-02-01T00:00:00.000' AS DateTime), CAST(2 AS Numeric(5, 0)), N'jane_doe', CAST(2 AS Numeric(10, 0)), CAST(N'2022-02-01T00:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(2 AS Numeric(10, 0)), 0x70617373776F726432, CAST(N'2022-02-01T00:00:00.000' AS DateTime), 30, 0, CAST(N'2022-02-01T00:00:00.000' AS DateTime), N'jane@example.com', N'creds2', 0)
INSERT [dbo].[USUARIO] ([idUsuario], [apellido1], [apellido2], [nombre], [dni], [telefono], [fechaAlta], [idTipo], [login], [idPuestoTrabajoDefecto], [fechaCambioEstado], [nEstado], [idEmpleado], [password], [tPasswordSetDate], [tPasswordValidPeriod], [bPasswordForceChange], [tUnlock], [email], [credentials], [bUserProtected]) VALUES (CAST(3 AS Numeric(10, 0)), N'Brown', N'Taylor', N'Robert', N'123123123', N'555-8910', CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), N'robert_brown', CAST(1 AS Numeric(10, 0)), CAST(N'2022-03-01T00:00:00.000' AS DateTime), CAST(1 AS Numeric(5, 0)), CAST(3 AS Numeric(10, 0)), 0x70617373776F726433, CAST(N'2022-03-01T00:00:00.000' AS DateTime), 30, 0, CAST(N'2022-03-01T00:00:00.000' AS DateTime), N'robert@example.com', N'creds3', 0)
GO
ALTER TABLE [dbo].[TRANSACCION]  WITH CHECK ADD  CONSTRAINT [FK_TRANSACCION_CAMPANYA] FOREIGN KEY([idCampanya])
REFERENCES [dbo].[CAMPANYA] ([idCampanya])
GO
ALTER TABLE [dbo].[TRANSACCION] CHECK CONSTRAINT [FK_TRANSACCION_CAMPANYA]
GO
ALTER TABLE [dbo].[TRANSACCION]  WITH CHECK ADD  CONSTRAINT [FK_TRANSACCION_USUARIO] FOREIGN KEY([idSujeto])
REFERENCES [dbo].[USUARIO] ([idUsuario])
GO
ALTER TABLE [dbo].[TRANSACCION] CHECK CONSTRAINT [FK_TRANSACCION_USUARIO]
GO
