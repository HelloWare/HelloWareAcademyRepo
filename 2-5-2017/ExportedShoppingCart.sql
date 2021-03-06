USE [ShoppingCart]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 2/5/2017 5:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](25) NULL,
	[Address1] [varchar](100) NOT NULL,
	[Address2] [varchar](100) NULL,
	[City] [varchar](25) NOT NULL,
	[State] [char](2) NOT NULL,
	[ZipCode] [varchar](10) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CustomerId] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Customer]    Script Date: 2/5/2017 5:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](25) NOT NULL,
	[LastName] [varchar](25) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[UserName] [varchar](25) NOT NULL,
	[Password] [varchar](25) NOT NULL,
	[Phone] [varchar](25) NOT NULL,
	[IsActive] [bit] NOT NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Customer] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyOrder]    Script Date: 2/5/2017 5:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyOrder](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[GrandTotal] [money] NULL,
	[OrderDate] [datetime] NULL,
	[CustomerId] [int] NOT NULL,
	[Status] [varchar](15) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_MyOrder] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyOrderProduct]    Script Date: 2/5/2017 5:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyOrderProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MyOrderId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NULL,
	[UnitPrice] [money] NULL,
	[SubTotal] [decimal](18, 0) NULL,
 CONSTRAINT [PK_MyOrderProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyShoppingCart]    Script Date: 2/5/2017 5:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyShoppingCart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CustomerId] [int] NOT NULL,
	[GrandTotal] [decimal](18, 0) NULL,
	[CreatedDate] [datetime] NOT NULL,
 CONSTRAINT [PK_MyShoppingCart] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[MyShoppingCartProduct]    Script Date: 2/5/2017 5:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MyShoppingCartProduct](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MyShoppingCartId] [int] NOT NULL,
	[ProductId] [int] NOT NULL,
	[Quantity] [decimal](18, 0) NULL,
	[UnitPrice] [money] NULL,
	[SubTotal] [decimal](18, 0) NULL,
 CONSTRAINT [PK_MyShoppingCartProduct] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Product]    Script Date: 2/5/2017 5:05:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Product](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NULL,
	[Description] [varchar](200) NULL,
	[UnitPrice] [money] NULL,
	[UnitOfMeasure] [varchar](25) NULL,
	[IsActive] [bit] NULL,
	[Picture] [varchar](100) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
 CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) 
VALUES (5, N'Shawn', N'Shi', N'shawnshi@yahoo.com', N'ShawnShi', N'abc123', N'713-789-9632', 1, CAST(N'2017-02-04T15:53:12.367' AS DateTime))


INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) 
VALUES (6, N'Tom', N'Obama', N'TomSmith@gmail.com', N'TomS', N'123PWD', N'832-854-8521', 1, CAST(N'2017-02-04T15:54:04.863' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (8, N'Kathy0', N'Obama0', N'KathyS0@gmail.com', N'KathyS0', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.487' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (9, N'Linda1', N'Smith1', N'KathyS1@gmail.com', N'KathyS1', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.497' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (10, N'Kathy2', N'Obama2', N'KathyS2@gmail.com', N'KathyS2', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.500' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (11, N'Linda3', N'Smith3', N'KathyS3@gmail.com', N'KathyS3', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.503' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (12, N'Kathy4', N'Obama4', N'KathyS4@gmail.com', N'KathyS4', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.510' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (13, N'Linda5', N'Smith5', N'KathyS5@gmail.com', N'KathyS5', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.513' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (14, N'Kathy6', N'Obama6', N'KathyS6@gmail.com', N'KathyS6', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.517' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (15, N'Linda7', N'Smith7', N'KathyS7@gmail.com', N'KathyS7', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.520' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (16, N'Kathy8', N'Obama8', N'KathyS8@gmail.com', N'KathyS8', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.527' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (17, N'Linda9', N'Smith9', N'KathyS9@gmail.com', N'KathyS9', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.530' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (18, N'Kathy10', N'Obama10', N'KathyS10@gmail.com', N'KathyS10', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.533' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (19, N'Linda11', N'Smith11', N'KathyS11@gmail.com', N'KathyS11', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.540' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (20, N'Kathy12', N'Obama12', N'KathyS12@gmail.com', N'KathyS12', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.543' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (21, N'Linda13', N'Smith13', N'KathyS13@gmail.com', N'KathyS13', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.547' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (22, N'Kathy14', N'Obama14', N'KathyS14@gmail.com', N'KathyS14', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.550' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (23, N'Linda15', N'Smith15', N'KathyS15@gmail.com', N'KathyS15', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.557' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (24, N'Kathy16', N'Obama16', N'KathyS16@gmail.com', N'KathyS16', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.560' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (25, N'Linda17', N'Smith17', N'KathyS17@gmail.com', N'KathyS17', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.563' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (26, N'Kathy18', N'Obama18', N'KathyS18@gmail.com', N'KathyS18', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.570' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (27, N'Linda19', N'Smith19', N'KathyS19@gmail.com', N'KathyS19', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.573' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (28, N'Kathy20', N'Obama20', N'KathyS20@gmail.com', N'KathyS20', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.577' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (29, N'Linda21', N'Smith21', N'KathyS21@gmail.com', N'KathyS21', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.580' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (30, N'Kathy22', N'Obama22', N'KathyS22@gmail.com', N'KathyS22', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.583' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (31, N'Linda23', N'Smith23', N'KathyS23@gmail.com', N'KathyS23', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.590' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (32, N'Kathy24', N'Obama24', N'KathyS24@gmail.com', N'KathyS24', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.593' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (33, N'Linda25', N'Smith25', N'KathyS25@gmail.com', N'KathyS25', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.597' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (34, N'Kathy26', N'Obama26', N'KathyS26@gmail.com', N'KathyS26', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.600' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (35, N'Linda27', N'Smith27', N'KathyS27@gmail.com', N'KathyS27', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.607' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (36, N'Kathy28', N'Obama28', N'KathyS28@gmail.com', N'KathyS28', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.610' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (37, N'Linda29', N'Smith29', N'KathyS29@gmail.com', N'KathyS29', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.613' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (38, N'Kathy30', N'Obama30', N'KathyS30@gmail.com', N'KathyS30', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.620' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (39, N'Linda31', N'Smith31', N'KathyS31@gmail.com', N'KathyS31', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.623' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (40, N'Kathy32', N'Obama32', N'KathyS32@gmail.com', N'KathyS32', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.627' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (41, N'Linda33', N'Smith33', N'KathyS33@gmail.com', N'KathyS33', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.633' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (42, N'Kathy34', N'Obama34', N'KathyS34@gmail.com', N'KathyS34', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.637' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (43, N'Linda35', N'Smith35', N'KathyS35@gmail.com', N'KathyS35', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.640' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (44, N'Kathy36', N'Obama36', N'KathyS36@gmail.com', N'KathyS36', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.647' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (45, N'Linda37', N'Smith37', N'KathyS37@gmail.com', N'KathyS37', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.650' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (46, N'Kathy38', N'Obama38', N'KathyS38@gmail.com', N'KathyS38', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.653' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (47, N'Linda39', N'Smith39', N'KathyS39@gmail.com', N'KathyS39', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.657' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (48, N'Kathy40', N'Obama40', N'KathyS40@gmail.com', N'KathyS40', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.663' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (49, N'Linda41', N'Smith41', N'KathyS41@gmail.com', N'KathyS41', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.667' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (50, N'Kathy42', N'Obama42', N'KathyS42@gmail.com', N'KathyS42', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.670' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (51, N'Linda43', N'Smith43', N'KathyS43@gmail.com', N'KathyS43', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.673' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (52, N'Kathy44', N'Obama44', N'KathyS44@gmail.com', N'KathyS44', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.680' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (53, N'Linda45', N'Smith45', N'KathyS45@gmail.com', N'KathyS45', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.683' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (54, N'Kathy46', N'Obama46', N'KathyS46@gmail.com', N'KathyS46', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.687' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (55, N'Linda47', N'Smith47', N'KathyS47@gmail.com', N'KathyS47', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.693' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (56, N'Kathy48', N'Obama48', N'KathyS48@gmail.com', N'KathyS48', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.697' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (57, N'Linda49', N'Smith49', N'KathyS49@gmail.com', N'KathyS49', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.700' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (58, N'Kathy50', N'Obama50', N'KathyS50@gmail.com', N'KathyS50', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.703' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (59, N'Linda51', N'Smith51', N'KathyS51@gmail.com', N'KathyS51', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.710' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (60, N'Kathy52', N'Obama52', N'KathyS52@gmail.com', N'KathyS52', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.713' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (61, N'Linda53', N'Smith53', N'KathyS53@gmail.com', N'KathyS53', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.717' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (62, N'Kathy54', N'Obama54', N'KathyS54@gmail.com', N'KathyS54', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.720' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (63, N'Linda55', N'Smith55', N'KathyS55@gmail.com', N'KathyS55', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.727' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (64, N'Kathy56', N'Obama56', N'KathyS56@gmail.com', N'KathyS56', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.730' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (65, N'Linda57', N'Smith57', N'KathyS57@gmail.com', N'KathyS57', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.733' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (66, N'Kathy58', N'Obama58', N'KathyS58@gmail.com', N'KathyS58', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.740' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (67, N'Linda59', N'Smith59', N'KathyS59@gmail.com', N'KathyS59', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.743' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (68, N'Kathy60', N'Obama60', N'KathyS60@gmail.com', N'KathyS60', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.747' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (69, N'Linda61', N'Smith61', N'KathyS61@gmail.com', N'KathyS61', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.750' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (70, N'Kathy62', N'Obama62', N'KathyS62@gmail.com', N'KathyS62', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.757' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (71, N'Linda63', N'Smith63', N'KathyS63@gmail.com', N'KathyS63', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.760' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (72, N'Kathy64', N'Obama64', N'KathyS64@gmail.com', N'KathyS64', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.763' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (73, N'Linda65', N'Smith65', N'KathyS65@gmail.com', N'KathyS65', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.770' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (74, N'Kathy66', N'Obama66', N'KathyS66@gmail.com', N'KathyS66', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.773' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (75, N'Linda67', N'Smith67', N'KathyS67@gmail.com', N'KathyS67', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.777' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (76, N'Kathy68', N'Obama68', N'KathyS68@gmail.com', N'KathyS68', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.780' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (77, N'Linda69', N'Smith69', N'KathyS69@gmail.com', N'KathyS69', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.783' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (78, N'Kathy70', N'Obama70', N'KathyS70@gmail.com', N'KathyS70', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.790' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (79, N'Linda71', N'Smith71', N'KathyS71@gmail.com', N'KathyS71', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.793' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (80, N'Kathy72', N'Obama72', N'KathyS72@gmail.com', N'KathyS72', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.797' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (81, N'Linda73', N'Smith73', N'KathyS73@gmail.com', N'KathyS73', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.800' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (82, N'Kathy74', N'Obama74', N'KathyS74@gmail.com', N'KathyS74', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.807' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (83, N'Linda75', N'Smith75', N'KathyS75@gmail.com', N'KathyS75', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.810' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (84, N'Kathy76', N'Obama76', N'KathyS76@gmail.com', N'KathyS76', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.813' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (85, N'Linda77', N'Smith77', N'KathyS77@gmail.com', N'KathyS77', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.820' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (86, N'Kathy78', N'Obama78', N'KathyS78@gmail.com', N'KathyS78', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.823' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (87, N'Linda79', N'Smith79', N'KathyS79@gmail.com', N'KathyS79', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.827' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (88, N'Kathy80', N'Obama80', N'KathyS80@gmail.com', N'KathyS80', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.830' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (89, N'Linda81', N'Smith81', N'KathyS81@gmail.com', N'KathyS81', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.837' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (90, N'Kathy82', N'Obama82', N'KathyS82@gmail.com', N'KathyS82', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.840' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (91, N'Linda83', N'Smith83', N'KathyS83@gmail.com', N'KathyS83', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.843' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (92, N'Kathy84', N'Obama84', N'KathyS84@gmail.com', N'KathyS84', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.847' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (93, N'Linda85', N'Smith85', N'KathyS85@gmail.com', N'KathyS85', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.850' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (94, N'Kathy86', N'Obama86', N'KathyS86@gmail.com', N'KathyS86', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.857' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (95, N'Linda87', N'Smith87', N'KathyS87@gmail.com', N'KathyS87', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.860' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (96, N'Kathy88', N'Obama88', N'KathyS88@gmail.com', N'KathyS88', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.863' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (97, N'Linda89', N'Smith89', N'KathyS89@gmail.com', N'KathyS89', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.870' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (98, N'Kathy90', N'Obama90', N'KathyS90@gmail.com', N'KathyS90', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.873' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (99, N'Linda91', N'Smith91', N'KathyS91@gmail.com', N'KathyS91', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.877' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (100, N'Kathy92', N'Obama92', N'KathyS92@gmail.com', N'KathyS92', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.880' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (101, N'Linda93', N'Smith93', N'KathyS93@gmail.com', N'KathyS93', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.887' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (102, N'Kathy94', N'Obama94', N'KathyS94@gmail.com', N'KathyS94', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.890' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (103, N'Linda95', N'Smith95', N'KathyS95@gmail.com', N'KathyS95', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.893' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (104, N'Kathy96', N'Obama96', N'KathyS96@gmail.com', N'KathyS96', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.897' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (105, N'Linda97', N'Smith97', N'KathyS97@gmail.com', N'KathyS97', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.900' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (106, N'Kathy98', N'Obama98', N'KathyS98@gmail.com', N'KathyS98', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.907' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (107, N'Linda99', N'Smith99', N'KathyS99@gmail.com', N'KathyS99', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:04:48.910' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (108, N'Kathy', N'Obama', N'KathyS@gmail.com', N'KathyS', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.890' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (109, N'Linda0', N'Smith0', N'KathyS0@gmail.com', N'KathyS0', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.893' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (110, N'Kathy1', N'Obama1', N'KathyS1@gmail.com', N'KathyS1', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.900' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (111, N'Linda2', N'Smith2', N'KathyS2@gmail.com', N'KathyS2', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.903' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (112, N'Kathy3', N'Obama3', N'KathyS3@gmail.com', N'KathyS3', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.907' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (113, N'Linda4', N'Smith4', N'KathyS4@gmail.com', N'KathyS4', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.910' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (114, N'Kathy5', N'Obama5', N'KathyS5@gmail.com', N'KathyS5', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.913' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (115, N'Linda6', N'Smith6', N'KathyS6@gmail.com', N'KathyS6', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.920' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (116, N'Kathy7', N'Obama7', N'KathyS7@gmail.com', N'KathyS7', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.923' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (117, N'Linda8', N'Smith8', N'KathyS8@gmail.com', N'KathyS8', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.927' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (118, N'Kathy9', N'Obama9', N'KathyS9@gmail.com', N'KathyS9', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.930' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (119, N'Linda10', N'Smith10', N'KathyS10@gmail.com', N'KathyS10', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.937' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (120, N'Kathy11', N'Obama11', N'KathyS11@gmail.com', N'KathyS11', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.940' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (121, N'Linda12', N'Smith12', N'KathyS12@gmail.com', N'KathyS12', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.943' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (122, N'Kathy13', N'Obama13', N'KathyS13@gmail.com', N'KathyS13', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.947' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (123, N'Linda14', N'Smith14', N'KathyS14@gmail.com', N'KathyS14', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.950' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (124, N'Kathy15', N'Obama15', N'KathyS15@gmail.com', N'KathyS15', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.957' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (125, N'Linda16', N'Smith16', N'KathyS16@gmail.com', N'KathyS16', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.960' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (126, N'Kathy17', N'Obama17', N'KathyS17@gmail.com', N'KathyS17', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.963' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (127, N'Linda18', N'Smith18', N'KathyS18@gmail.com', N'KathyS18', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.967' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (128, N'Kathy19', N'Obama19', N'KathyS19@gmail.com', N'KathyS19', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.973' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (129, N'Linda20', N'Smith20', N'KathyS20@gmail.com', N'KathyS20', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.977' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (130, N'Kathy21', N'Obama21', N'KathyS21@gmail.com', N'KathyS21', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.980' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (131, N'Linda22', N'Smith22', N'KathyS22@gmail.com', N'KathyS22', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.983' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (132, N'Kathy23', N'Obama23', N'KathyS23@gmail.com', N'KathyS23', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.990' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (133, N'Linda24', N'Smith24', N'KathyS24@gmail.com', N'KathyS24', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.993' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (134, N'Kathy25', N'Obama25', N'KathyS25@gmail.com', N'KathyS25', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:47.997' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (135, N'Linda26', N'Smith26', N'KathyS26@gmail.com', N'KathyS26', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.000' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (136, N'Kathy27', N'Obama27', N'KathyS27@gmail.com', N'KathyS27', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.003' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (137, N'Linda28', N'Smith28', N'KathyS28@gmail.com', N'KathyS28', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.010' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (138, N'Kathy29', N'Obama29', N'KathyS29@gmail.com', N'KathyS29', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.013' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (139, N'Linda30', N'Smith30', N'KathyS30@gmail.com', N'KathyS30', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.017' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (140, N'Kathy31', N'Obama31', N'KathyS31@gmail.com', N'KathyS31', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.020' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (141, N'Linda32', N'Smith32', N'KathyS32@gmail.com', N'KathyS32', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.027' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (142, N'Kathy33', N'Obama33', N'KathyS33@gmail.com', N'KathyS33', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.030' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (143, N'Linda34', N'Smith34', N'KathyS34@gmail.com', N'KathyS34', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.033' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (144, N'Kathy35', N'Obama35', N'KathyS35@gmail.com', N'KathyS35', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.037' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (145, N'Linda36', N'Smith36', N'KathyS36@gmail.com', N'KathyS36', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.040' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (146, N'Kathy37', N'Obama37', N'KathyS37@gmail.com', N'KathyS37', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.047' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (147, N'Linda38', N'Smith38', N'KathyS38@gmail.com', N'KathyS38', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.050' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (148, N'Kathy39', N'Obama39', N'KathyS39@gmail.com', N'KathyS39', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.053' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (149, N'Linda40', N'Smith40', N'KathyS40@gmail.com', N'KathyS40', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.060' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (150, N'Kathy41', N'Obama41', N'KathyS41@gmail.com', N'KathyS41', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.063' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (151, N'Linda42', N'Smith42', N'KathyS42@gmail.com', N'KathyS42', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.067' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (152, N'Kathy43', N'Obama43', N'KathyS43@gmail.com', N'KathyS43', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.070' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (153, N'Linda44', N'Smith44', N'KathyS44@gmail.com', N'KathyS44', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.073' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (154, N'Kathy45', N'Obama45', N'KathyS45@gmail.com', N'KathyS45', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.080' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (155, N'Linda46', N'Smith46', N'KathyS46@gmail.com', N'KathyS46', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.083' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (156, N'Kathy47', N'Obama47', N'KathyS47@gmail.com', N'KathyS47', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.087' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (157, N'Linda48', N'Smith48', N'KathyS48@gmail.com', N'KathyS48', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.090' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (158, N'Kathy49', N'Obama49', N'KathyS49@gmail.com', N'KathyS49', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.097' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (159, N'Linda50', N'Smith50', N'KathyS50@gmail.com', N'KathyS50', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.100' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (160, N'Kathy51', N'Obama51', N'KathyS51@gmail.com', N'KathyS51', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.103' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (161, N'Linda52', N'Smith52', N'KathyS52@gmail.com', N'KathyS52', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.107' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (162, N'Kathy53', N'Obama53', N'KathyS53@gmail.com', N'KathyS53', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.113' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (163, N'Linda54', N'Smith54', N'KathyS54@gmail.com', N'KathyS54', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.117' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (164, N'Kathy55', N'Obama55', N'KathyS55@gmail.com', N'KathyS55', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.120' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (165, N'Linda56', N'Smith56', N'KathyS56@gmail.com', N'KathyS56', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.123' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (166, N'Kathy57', N'Obama57', N'KathyS57@gmail.com', N'KathyS57', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.130' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (167, N'Linda58', N'Smith58', N'KathyS58@gmail.com', N'KathyS58', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.133' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (168, N'Kathy59', N'Obama59', N'KathyS59@gmail.com', N'KathyS59', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.137' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (169, N'Linda60', N'Smith60', N'KathyS60@gmail.com', N'KathyS60', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.140' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (170, N'Kathy61', N'Obama61', N'KathyS61@gmail.com', N'KathyS61', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.147' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (171, N'Linda62', N'Smith62', N'KathyS62@gmail.com', N'KathyS62', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.150' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (172, N'Kathy63', N'Obama63', N'KathyS63@gmail.com', N'KathyS63', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.153' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (173, N'Linda64', N'Smith64', N'KathyS64@gmail.com', N'KathyS64', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.157' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (174, N'Kathy65', N'Obama65', N'KathyS65@gmail.com', N'KathyS65', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.163' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (175, N'Linda66', N'Smith66', N'KathyS66@gmail.com', N'KathyS66', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.167' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (176, N'Kathy67', N'Obama67', N'KathyS67@gmail.com', N'KathyS67', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.170' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (177, N'Linda68', N'Smith68', N'KathyS68@gmail.com', N'KathyS68', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.173' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (178, N'Kathy69', N'Obama69', N'KathyS69@gmail.com', N'KathyS69', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.180' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (179, N'Linda70', N'Smith70', N'KathyS70@gmail.com', N'KathyS70', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.183' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (180, N'Kathy71', N'Obama71', N'KathyS71@gmail.com', N'KathyS71', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.187' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (181, N'Linda72', N'Smith72', N'KathyS72@gmail.com', N'KathyS72', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.190' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (182, N'Kathy73', N'Obama73', N'KathyS73@gmail.com', N'KathyS73', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.197' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (183, N'Linda74', N'Smith74', N'KathyS74@gmail.com', N'KathyS74', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.200' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (184, N'Kathy75', N'Obama75', N'KathyS75@gmail.com', N'KathyS75', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.203' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (185, N'Linda76', N'Smith76', N'KathyS76@gmail.com', N'KathyS76', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.207' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (186, N'Kathy77', N'Obama77', N'KathyS77@gmail.com', N'KathyS77', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.210' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (187, N'Linda78', N'Smith78', N'KathyS78@gmail.com', N'KathyS78', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.217' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (188, N'Kathy79', N'Obama79', N'KathyS79@gmail.com', N'KathyS79', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.220' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (189, N'Linda80', N'Smith80', N'KathyS80@gmail.com', N'KathyS80', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.223' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (190, N'Kathy81', N'Obama81', N'KathyS81@gmail.com', N'KathyS81', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.230' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (191, N'Linda82', N'Smith82', N'KathyS82@gmail.com', N'KathyS82', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.233' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (192, N'Kathy83', N'Obama83', N'KathyS83@gmail.com', N'KathyS83', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.237' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (193, N'Linda84', N'Smith84', N'KathyS84@gmail.com', N'KathyS84', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.240' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (194, N'Kathy85', N'Obama85', N'KathyS85@gmail.com', N'KathyS85', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.243' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (195, N'Linda86', N'Smith86', N'KathyS86@gmail.com', N'KathyS86', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.250' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (196, N'Kathy87', N'Obama87', N'KathyS87@gmail.com', N'KathyS87', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.253' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (197, N'Linda88', N'Smith88', N'KathyS88@gmail.com', N'KathyS88', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.257' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (198, N'Kathy89', N'Obama89', N'KathyS89@gmail.com', N'KathyS89', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.260' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (199, N'Linda90', N'Smith90', N'KathyS90@gmail.com', N'KathyS90', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.267' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (200, N'Kathy91', N'Obama91', N'KathyS91@gmail.com', N'KathyS91', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.270' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (201, N'Linda92', N'Smith92', N'KathyS92@gmail.com', N'KathyS92', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.273' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (202, N'Kathy93', N'Obama93', N'KathyS93@gmail.com', N'KathyS93', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.277' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (203, N'Linda94', N'Smith94', N'KathyS94@gmail.com', N'KathyS94', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.280' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (204, N'Kathy95', N'Obama95', N'KathyS95@gmail.com', N'KathyS95', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.287' AS DateTime))
GO
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (205, N'Linda96', N'Smith96', N'KathyS96@gmail.com', N'KathyS96', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.290' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (206, N'Kathy97', N'Obama97', N'KathyS97@gmail.com', N'KathyS97', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.293' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (207, N'Linda98', N'Smith98', N'KathyS98@gmail.com', N'KathyS98', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.297' AS DateTime))
INSERT [dbo].[Customer] ([Id], [FirstName], [LastName], [Email], [UserName], [Password], [Phone], [IsActive], [CreatedDate]) VALUES (208, N'Kathy99', N'Obama99', N'KathyS99@gmail.com', N'KathyS99', N'DummyPwd1!', N'713-965-8520', 1, CAST(N'2017-02-05T13:22:48.303' AS DateTime))
SET IDENTITY_INSERT [dbo].[Customer] OFF
SET IDENTITY_INSERT [dbo].[MyOrder] ON 

INSERT [dbo].[MyOrder] ([Id], [GrandTotal], [OrderDate], [CustomerId], [Status], [CreatedDate]) VALUES (1, 12.0000, CAST(N'2017-02-04T00:00:00.000' AS DateTime), 9, N'Delivered', CAST(N'2017-02-05T13:22:15.793' AS DateTime))
INSERT [dbo].[MyOrder] ([Id], [GrandTotal], [OrderDate], [CustomerId], [Status], [CreatedDate]) VALUES (2, 23.9900, CAST(N'2017-02-04T00:00:00.000' AS DateTime), 9, N'Delivered', CAST(N'2017-02-05T13:22:48.317' AS DateTime))
INSERT [dbo].[MyOrder] ([Id], [GrandTotal], [OrderDate], [CustomerId], [Status], [CreatedDate]) VALUES (3, 10.9900, CAST(N'2017-02-05T00:00:00.000' AS DateTime), 10, N'Confirmed', CAST(N'2017-02-05T13:22:48.320' AS DateTime))
SET IDENTITY_INSERT [dbo].[MyOrder] OFF
SET IDENTITY_INSERT [dbo].[MyOrderProduct] ON 

INSERT [dbo].[MyOrderProduct] ([Id], [MyOrderId], [ProductId], [Quantity], [UnitPrice], [SubTotal]) VALUES (1, 1, 2, CAST(1 AS Decimal(18, 0)), 1.9900, CAST(2 AS Decimal(18, 0)))
INSERT [dbo].[MyOrderProduct] ([Id], [MyOrderId], [ProductId], [Quantity], [UnitPrice], [SubTotal]) VALUES (2, 1, 3, CAST(2 AS Decimal(18, 0)), 2.9900, CAST(6 AS Decimal(18, 0)))
INSERT [dbo].[MyOrderProduct] ([Id], [MyOrderId], [ProductId], [Quantity], [UnitPrice], [SubTotal]) VALUES (3, 2, 1, CAST(3 AS Decimal(18, 0)), 3.9900, CAST(12 AS Decimal(18, 0)))
INSERT [dbo].[MyOrderProduct] ([Id], [MyOrderId], [ProductId], [Quantity], [UnitPrice], [SubTotal]) VALUES (4, 3, 3, CAST(2 AS Decimal(18, 0)), 2.9900, CAST(5 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[MyOrderProduct] OFF
SET IDENTITY_INSERT [dbo].[Product] ON 

INSERT [dbo].[Product] ([Id], [Name], [Description], [UnitPrice], [UnitOfMeasure], [IsActive], [Picture], [CreatedDate], [CreatedBy]) VALUES (1, N'KungPao Chicken', N'Spicy Chuan food', 3.9900, N'Dish', 1, NULL, CAST(N'2017-02-05T13:15:51.717' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Description], [UnitPrice], [UnitOfMeasure], [IsActive], [Picture], [CreatedDate], [CreatedBy]) VALUES (2, N'Beijing Beef', N'Beijing beef with hot pepper', 4.9900, N'Dish', 1, NULL, CAST(N'2017-02-05T13:17:02.430' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Description], [UnitPrice], [UnitOfMeasure], [IsActive], [Picture], [CreatedDate], [CreatedBy]) VALUES (3, N'Potato slice', N'Farmer veg', 1.9900, N'lbs', 1, NULL, CAST(N'2017-02-05T13:17:50.660' AS DateTime), NULL)
INSERT [dbo].[Product] ([Id], [Name], [Description], [UnitPrice], [UnitOfMeasure], [IsActive], [Picture], [CreatedDate], [CreatedBy]) VALUES (4, N'Sweet Chicken', NULL, 2.9900, N'lbs', 1, NULL, CAST(N'2017-02-05T13:20:04.547' AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[Product] OFF
ALTER TABLE [dbo].[Address] ADD  CONSTRAINT [DF_Address_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MyOrder] ADD  CONSTRAINT [DF_MyOrder_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[MyShoppingCart] ADD  CONSTRAINT [DF_MyShoppingCart_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Product] ADD  CONSTRAINT [DF_Product_CreatedDate]  DEFAULT (getdate()) FOR [CreatedDate]
GO
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Customer]
GO
ALTER TABLE [dbo].[MyOrder]  WITH CHECK ADD  CONSTRAINT [FK_MyOrder_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[MyOrder] CHECK CONSTRAINT [FK_MyOrder_Customer]
GO
ALTER TABLE [dbo].[MyOrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_MyOrderProduct_MyOrder] FOREIGN KEY([MyOrderId])
REFERENCES [dbo].[MyOrder] ([Id])
GO
ALTER TABLE [dbo].[MyOrderProduct] CHECK CONSTRAINT [FK_MyOrderProduct_MyOrder]
GO
ALTER TABLE [dbo].[MyOrderProduct]  WITH CHECK ADD  CONSTRAINT [FK_MyOrderProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[MyOrderProduct] CHECK CONSTRAINT [FK_MyOrderProduct_Product]
GO
ALTER TABLE [dbo].[MyShoppingCart]  WITH CHECK ADD  CONSTRAINT [FK_MyShoppingCart_Customer] FOREIGN KEY([CustomerId])
REFERENCES [dbo].[Customer] ([Id])
GO
ALTER TABLE [dbo].[MyShoppingCart] CHECK CONSTRAINT [FK_MyShoppingCart_Customer]
GO
ALTER TABLE [dbo].[MyShoppingCartProduct]  WITH CHECK ADD  CONSTRAINT [FK_MyShoppingCartProduct_MyShoppingCart] FOREIGN KEY([MyShoppingCartId])
REFERENCES [dbo].[MyShoppingCart] ([Id])
GO
ALTER TABLE [dbo].[MyShoppingCartProduct] CHECK CONSTRAINT [FK_MyShoppingCartProduct_MyShoppingCart]
GO
ALTER TABLE [dbo].[MyShoppingCartProduct]  WITH CHECK ADD  CONSTRAINT [FK_MyShoppingCartProduct_Product] FOREIGN KEY([ProductId])
REFERENCES [dbo].[Product] ([Id])
GO
ALTER TABLE [dbo].[MyShoppingCartProduct] CHECK CONSTRAINT [FK_MyShoppingCartProduct_Product]
GO
