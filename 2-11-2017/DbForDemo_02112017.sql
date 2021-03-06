USE [Demo]
GO
/****** Object:  Table [dbo].[Department]    Script Date: 2/11/2017 5:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](200) NULL,
 CONSTRAINT [PK_Department_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2/11/2017 5:14:51 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](25) NOT NULL,
	[LastName] [varchar](25) NOT NULL,
	[Description] [varchar](200) NULL,
	[DeptId] [int] NULL,
	[Salary] [decimal](12, 2) NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (1, N'Accounting', N'In charge money')
INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (2, N'HR', N'in charge of firing')
INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (3, N'IT', NULL)
INSERT [dbo].[Department] ([Id], [Name], [Description]) VALUES (4, N'Sales', NULL)
SET IDENTITY_INSERT [dbo].[Department] OFF
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Description], [DeptId], [Salary]) VALUES (1, N'Deyi', N'Kong', NULL, 3, CAST(100000.00 AS Decimal(12, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Description], [DeptId], [Salary]) VALUES (2, N'Shawn', N'Shi', NULL, 4, CAST(300.00 AS Decimal(12, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Description], [DeptId], [Salary]) VALUES (3, N'John', N'Smith', NULL, 4, CAST(20000.00 AS Decimal(12, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Description], [DeptId], [Salary]) VALUES (4, N'Trump', N'D', NULL, 3, CAST(250.00 AS Decimal(12, 2)))
INSERT [dbo].[Employee] ([Id], [FirstName], [LastName], [Description], [DeptId], [Salary]) VALUES (5, N'Hilary', N'C', NULL, 4, CAST(1000.00 AS Decimal(12, 2)))
SET IDENTITY_INSERT [dbo].[Employee] OFF
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Department] FOREIGN KEY([DeptId])
REFERENCES [dbo].[Department] ([Id])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Department]
GO
