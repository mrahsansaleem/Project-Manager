USE [Project Management System]
GO
/****** Object:  Table [dbo].[Evaluation]    Script Date: 12/19/2019 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Evaluation](
	[id] [int] IDENTITY(0,1) NOT NULL,
	[stdID] [varchar](100) NOT NULL,
	[TotalMarks] [varchar](50) NOT NULL,
	[obtainMarks] [varchar](50) NOT NULL,
	[weightage] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Evaluation] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Groups]    Script Date: 12/19/2019 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Groups](
	[GrpId] [int] IDENTITY(0,1) NOT NULL,
	[GrpName] [varchar](100) NOT NULL,
	[AsignProName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Groups] PRIMARY KEY CLUSTERED 
(
	[GrpId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Projects]    Script Date: 12/19/2019 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Projects](
	[ProId] [int] IDENTITY(0,1) NOT NULL,
	[ProName] [varchar](100) NOT NULL,
	[ProDescription] [varchar](500) NOT NULL,
 CONSTRAINT [PK_Projects] PRIMARY KEY CLUSTERED 
(
	[ProId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 12/19/2019 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[Uid] [int] IDENTITY(0,1) NOT NULL,
	[Uname] [varchar](100) NOT NULL,
	[UrollNo] [varchar](100) NOT NULL,
	[Ugroup] [varchar](100) NOT NULL,
	[UType] [varchar](100) NOT NULL,
	[Uproject] [varchar](100) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[UserTypes]    Script Date: 12/19/2019 1:01:32 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserTypes](
	[TypeId] [int] IDENTITY(0,1) NOT NULL,
	[TypeName] [varchar](100) NOT NULL,
 CONSTRAINT [PK_UserTypes] PRIMARY KEY CLUSTERED 
(
	[TypeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Evaluation] ON 

INSERT [dbo].[Evaluation] ([id], [stdID], [TotalMarks], [obtainMarks], [weightage]) VALUES (0, N'1', N'11', N'1', N'10')
INSERT [dbo].[Evaluation] ([id], [stdID], [TotalMarks], [obtainMarks], [weightage]) VALUES (1, N'2', N'2', N'2', N'2')
SET IDENTITY_INSERT [dbo].[Evaluation] OFF
SET IDENTITY_INSERT [dbo].[Groups] ON 

INSERT [dbo].[Groups] ([GrpId], [GrpName], [AsignProName]) VALUES (0, N'Group A', N'asp .net')
INSERT [dbo].[Groups] ([GrpId], [GrpName], [AsignProName]) VALUES (1, N'Group B', N'test')
SET IDENTITY_INSERT [dbo].[Groups] OFF
SET IDENTITY_INSERT [dbo].[Projects] ON 

INSERT [dbo].[Projects] ([ProId], [ProName], [ProDescription]) VALUES (0, N'asp .net', N'test project')
INSERT [dbo].[Projects] ([ProId], [ProName], [ProDescription]) VALUES (1, N'test', N'test')
SET IDENTITY_INSERT [dbo].[Projects] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([Uid], [Uname], [UrollNo], [Ugroup], [UType], [Uproject]) VALUES (0, N'test', N'test', N'Group A', N'Student', N'asp .net')
INSERT [dbo].[Users] ([Uid], [Uname], [UrollNo], [Ugroup], [UType], [Uproject]) VALUES (1, N'22', N'22', N'3', N'3', N'23')
INSERT [dbo].[Users] ([Uid], [Uname], [UrollNo], [Ugroup], [UType], [Uproject]) VALUES (2, N'2', N'2', N'2', N'Student', N'2')
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[UserTypes] ON 

INSERT [dbo].[UserTypes] ([TypeId], [TypeName]) VALUES (0, N'Student')
INSERT [dbo].[UserTypes] ([TypeId], [TypeName]) VALUES (1, N'Advicer')
SET IDENTITY_INSERT [dbo].[UserTypes] OFF
