USE [course]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
	[messag] [nvarchar](250) NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[cours]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cours](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[teacher] [int] NOT NULL,
	[datestart] [date] NOT NULL,
	[imag] [nvarchar](max) NOT NULL,
	[dep] [int] NOT NULL,
	[contentcourse] [nvarchar](100) NULL,
 CONSTRAINT [PK_cours] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[data_of_student]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[data_of_student](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[gender] [nvarchar](10) NULL,
	[Adress] [nvarchar](100) NULL,
	[gamil] [nvarchar](max) NULL,
	[telephone] [nvarchar](11) NULL,
	[id_courese] [int] NULL,
	[id_student] [nvarchar](128) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Department]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Department](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Table_1]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Table_1](
	[klsjh] [bit] NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[trainer]    Script Date: 11/12/2020 2:48:22 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[trainer](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](100) NULL,
 CONSTRAINT [PK_trainer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202009250056441_InitialCreate', N'MyAcadmy.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE436127D5F60FF41D05376E1B47CC90C668D7602A76DEF1A195F30ED09F236604BECB63012A548946363912FDB877C527E618B1275E345A2BAE5EE7630C0A045164F158B45B2582CFACFFFFD31FDE1390CAC279CA47E44CEECA3C9A16D61E2469E4F5667764697DF7EB07FF8FEEF7F9B5E7AE1B3F5734977C2E8A02549CFEC474AE353C749DD471CA27412FA6E12A5D1924EDC2874901739C78787FF728E8E1C0C10366059D6F45346A81FE2FC033E671171714C3314DC441E0E525E0E35F31CD5BA45214E63E4E233FBE6E5DC455EF83229486DEB3CF0118831C7C1D2B61021114514843CFD9CE2394D22B29AC750808287971803DD120529E6C29FD6E4A6FD383C66FD70EA8625949BA5340A07021E9D70C53862F3B5D46B578A03D55D828AE90BEB75AEBE33FBDAC379D1A7280005880C4F6741C28841C3158BF334BEC57452369C14905709C0FD16255F274DC403CBB8DD416548C79343F6EFC09A6501CD127C46704613141C58F7D922F0DD9FF0CB43F41593B393A3C5F2E4C3BBF7C83B79FF1D3E79D7EC29F415E85A0550749F44314E4036BCACFA6F5B4EBB9D2336AC9A35DA145A015B8239615B37E8F923262BFA08B3E5F8836D5DF9CFD82B4BB8717D263E4C216844930C3E6FB320408B0057F54E274FF67F07D7E377EF47E17A8B9EFC553EF4027F983809CCAB4F38C86BD3473F2EA6576BBCBF70B2AB240AD977DBBE8ADA2FF3284B5CD699484BF2809215A66DE9A64E6DBC4626CDA0C637EB1275FF4D9B492A9BB7929475689D9950B2D8F66C28E57D5DBEC616771EC73078B969318D741A5C7BA79A084DC1AA38416D3447A64643A0337FE535F032447E30C22268C0059C8FA59F84B8EAE58F11981C228365BE47690A6B80F71F943E76880E3F47107D8EDD2C01D39C5314C6AFCEEDFE3122F8360B17CCE2B7C76BB4A179F82DBA422E8D924BC25A6D8CF73172BF4619BD24DE05A2F833754B40F6F9E087E600A38873EEBA384DAFC098B1378BC0B72E01AF093D391E0CC756A75D3B21B300F9A1DA0B11D6D12F2569ED89A829246F4443A6F248BA44FD18AD7C62266A49AA17B5A0E81595930D1595819949CA29F582E604BD721654A3F978F9088DEFE4E5B0FBEFE56DB679EBD682861AE7B042E27F63821358C6BC7B44294E483D0226EBC62E9C857CF818D357DF9B724E3FA3201B9BD55AB3215F04C69F0D39ECFECF865C4C287EF23DE695181C7D4A628037A2579FAAFAE79C20D9B6A743AB9BDB66BE9D3540375DCED33472FD7C1628825E3C64D1961F7C38AB3F7E51F4468C8140C7C0D07DB6E54109F4CD168DEA8E5CE000536C9DBB455070865238F3C96A840E7903042B77548560752CA42DDC3F259E60E938618D103B04A530537D42E569E113D78F51D0AB25A1A5E116C6FA5EF1106B2E708C0963D8AB0913E6EAD00713A0E2230C4A9F86A64EC3E2BA0D51E3B5EAC6BCCF85ADC75D8A486CC5267B7C678D5D72FFED550CB35B635B30CE6E959808A00DE3EDC240F959C5D400C483CBBE19A87062D2182877A9B662A06D8DEDC040DB2A7973065A1C514DC75F38AFEE9B79B60FCADBDFD63BD5B503DB6CE963CF4CB3F03DA10D85163891CDF362C12AF133551CCE404E7E3E4BB9AB2B9A08039F63DA0ED9D4FEAED20F75BA414423EA02AC0DAD07945F004A40D2841A205C19CBEB948E7B110360CBB85B272C5FFB05D8860DC8D8CD8BD006A1FEBA54344EA3D347D5B3CA1A2423373A2C34701406212E5EED8E1B28451797951563E20B0FF1861B1DE383D1A1A01ECF55A3A4B233A36BA934CD7E2DA91CB2212ED9465A12DC278D96CACE8CAE256EA3FD4A52380503DC828D54D4DEC2479A6C65A4A3DA6DAABAA9532447F182A9A3C9A29ADEA038F6C9AA9155C54BAC79915235FB763E3CDD282C301C3755641D55D2569C6894A015166A8135487AE52729BD40142D108BF3CCBC502253EEAD9AE5BF64D9DC3EE5412CF781929AFD2E5A88D7F6AD8D56F64438C015742F64EE4C1E43570CBEBAB9C552DC50801245D87E16055948F4DE95BE757179D76C5F94C8085347905FF29E2455493E6E5BEF46A322CF883146A8F25CD61F253D844ED7A5DFD9D4B6CE17D5A394A1A9268A2E5CB5B351D3B930E62325BA86C307AA17E1756614CF476902F0A281188D940609AC51678EDACE3A6962B66BCC1185D49226A4503540CA6602494BC866C55A781A8DAA29CC39C829234D74B9D61C59913CD2845654AF81AD9059AC334755E497348115D5E6D875B289B882EEF19EA53DB0ACB7691507DACD762D0DC6EB2C87E36C7A8D7BFB2650A3782016BF9997C078F95E9A92F654B79E2915418CCD4C4983A15F735AD7DDED25A7F38E5E8FD9BAC36E2DEB5D77F87ABC6106FBAA66219DE844928A7B75B2134E70537E9AEA7F2C231DAF0A12DB2AD5085BFA4B4A7138610493F9AFC12CF0315BC04B821B44FC254E6991B7611F1F1E1D0B4F6EF6E7F98B93A65EA0388DEADEC0B4C76C0B2958E40925EE234AE484880D9E88D4A052ACF99A78F8F9CCFE6FDEEA340F5BB05F79F181759D7E26FEAF19543C2419B67E97133CC749993778A45109FAFB9B78FD60AEF2EB5FBE144D0FACBB04A6D3A97528287A9DE16FBF8918244DD1740369D67E29F176675BEB31821255982DEBBF3D58F874947707A594DF84E8F91F434553BE2DD80851F17E602CBC5154A87B1FB00E96F66D80079F347F1B30ACB3EAB702EB88A67D27E093E160E22B01F365A86CB9C37D48715ADAC69294EBB937CB7AA394CB5DEF4D5232F646135D4EB81E00376A52F5662ECA1B4B561E6DEB54E4228F86BD4BBB7FF504E47DC939AE9DF6DDA61A6F33BBB8E31EE92F9554BC0769708AB49EDDA70E6FDBD674E1DF3DCFBF1C9620BC67C6C6B7F9DDA7016FDBD87401E23D37B641C9BE7B666BBBDA3F776C69C65BE8CE5377E52C24CD358E2A8ADC979A5B84DCE1F8BF88C0080A8FB27851A9CE05EBCA63ED615893E899EA93D044C6D2C491F84A14DD6C87F5956FF89D9DE534DD6C35A99B5DBCF9FADFC99BD374F3D62444EE22A9589992A84AF4EE59C7BAB2A6DE521271AB273D39EB7D3E6BE79DFC5BCA191E4529ADD9A3B95D7E3B29C2A3A864CCA933202558BE2886BDB3F1B71761FF4EFD550DC1FE1223C16E6BD7AC68AEC9322A376F41A2924488D0DC608A3CD852CF13EA2F914BA19A05A0F327E179508F5D832CB0774DEE321A6714BA8CC345D00A783127A08B7F9EF7DC96797A17B3AF748C2E80983E0BDCDF911F333FF02AB9AF1431210D04F32E78B8978D256561DFD54B85741B114320AEBECA297AC0611C00587A47E6E809AF231B98DF47BC42EE4B1D01D481F40F445BEDD30B1FAD1214A61CA36E0F9F60C35EF8FCFDFF018F37887882540000, N'6.2.0-61023')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'1', N'admine')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'cfc4d54c-3a6e-4eed-93a5-da342b5bcde2', N'Eslam')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'2', N'HR')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'3', N'Managment ')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [messag]) VALUES (N'32827736-5085-4d29-b43d-fe819d01eb4a', N'2', N'Bassem is a asdfbjhjknkjnklnklnkl')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [messag]) VALUES (N'8a8c3654-5a01-4a9b-8088-d1fbf32e1caa', N'3', N'Eslam is managment worker')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId], [messag]) VALUES (N'ea232ffc-800b-40a7-8e3c-eebca4eb312c', N'1', N'Ali is klhadkhjkljkljkljkjlkjjjjjjjjkljljlkkkkk')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'0e2b43bc-4604-4881-8865-1b27c3d0cc2f', N'Mohamed@gmail.com', 0, N'ABS4Kzp/mAua1oghuIrSPwIvFYnxyifKqOd9sRV/KTJDRGOHFLGYSkEBIU8wT5QAVw==', N'64f5669d-2a39-4231-a098-c46d35686109', NULL, 0, 0, NULL, 1, 0, N'Mohamed@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'126f202a-7a7c-4756-b6d8-ecb8077142c5', N'gfgfg@gmail.com', 0, N'APs/YpAfMErCf9I7K1HJArECrLsAkqOM6Rt7cds6V0PaDsPRwUvMKWHB4HWxiT7dGg==', N'b8c78517-891a-4972-94a4-1d2460ab1b6c', N'181-68-853', 0, 0, NULL, 1, 0, N'gfgfg@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'28143559-9481-4988-9390-ffb686571be2', N'Jamal@gmail.com', 0, N'APPnDZlslSBxRjLHU/jCUegezZt7uQstSaCKxBusfHGshpKyXaWAItE8NdlO6qJUFg==', N'33232cf4-b8f8-4fe8-99f2-777b595fe824', NULL, 0, 0, NULL, 1, 0, N'Jamal@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'32827736-5085-4d29-b43d-fe819d01eb4a', N'Bassem@gmail.com', 0, N'AMuJowvUTAFlM2mZ8BOCDlbbvJ12AICBsk93DzwKdz4G/TMfNgfaejTFUUwoSkd5Xg==', N'2188b8ec-47a3-40ef-9c1c-89537bb23808', NULL, 0, 0, NULL, 1, 0, N'Bassem@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'37dc0a32-2c97-4e4d-afdd-f0f180b423ac', N'Anaam@hotmail.com', 0, N'AFy4HWOGs6t/2ib2PWvZEQLdPWmB+EvIV5mjzt30N8aPjGry1qOJCcQXrCLHiSftQA==', N'6b6f6fd8-f9c5-4c37-8799-de3114e057f8', NULL, 0, 0, NULL, 1, 0, N'Anaam@hotmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'64d8acda-fc8a-4406-b1ec-363b43517e07', N'Eman@gmail.com', 0, N'AEjMxDndW3/I7pgmACJaoR314KGaeu9CuUVCcPxsIq5OY98eqo2aNmdqo+5F9nOPEA==', N'62f3ea8b-0d5b-46e7-b6ed-84840a8062d0', NULL, 0, 0, NULL, 1, 0, N'Eman@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'8a8c3654-5a01-4a9b-8088-d1fbf32e1caa', N'Eslam@gmail.com', 0, N'AOFHyG0ADwa1II+ojZP8zjnKiPAQsRKZmMQ9tcV/coHd3jDsonrrJvC4hkgBeiha3Q==', N'a6f16f91-cf9f-41ea-88f7-b289431b4318', NULL, 0, 0, NULL, 1, 0, N'Eslam@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'c965783d-33ce-4682-bd47-4aca73af5d0f', N'jkhaled497@comp.com', 0, N'AL5ZDY6MsKCQJcv81K9q3kqW8BfUHiKORZp96P+zufhzNe0ViRS2DbGEgm9UJuWsBw==', N'e72593bf-8648-46e4-a0cd-25f17c845a6c', NULL, 0, 0, NULL, 1, 0, N'jkhaled497@comp.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e20eaa10-5668-4f87-860a-00b4359711ff', N'Bakry@gmil.com', 0, N'AEMjltg9kDJbtBcmErDD7QqTAeo5ax8tqugTgK32JirT1YYWrZan/icaXeh6Ej3OJQ==', N'6feab433-5b5e-4529-810a-c58306bcf9d8', N'01255959489498', 0, 0, NULL, 1, 0, N'Bakry@gmil.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'ea232ffc-800b-40a7-8e3c-eebca4eb312c', N'Ali@hotmail.com', 0, N'AC61j0n9hMt6Zllmz9FJTcBXPxl3bVw4Zj7FVoqjolEAV1q4YmS7hqTZvuy1rvTttA==', N'384dfe11-6fae-439c-b264-280e1517c5af', NULL, 0, 0, NULL, 1, 0, N'Ali@hotmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'fc27e505-f3eb-47ed-9aa4-f77b89bc3f15', N'hager@gmail.com', 0, N'ANJf91XDqLfbaA0z+t0VlipOvq435nEkDCFtIoRRf4vMc/ZeW7UYQ/C6eoepBf4bmg==', N'b84a7c7b-9764-4ec3-b4f2-3376f18455f9', NULL, 0, 0, NULL, 1, 0, N'hager@gmail.com')
SET IDENTITY_INSERT [dbo].[cours] ON 

INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (7, N'kotlin', 4, CAST(N'2021-02-01' AS Date), N'~/Content/images/203208493images (2).jpg', 1, N'intoduction of programing Kotlin Basics and Kotlin oop  trackes usig this language')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (9, N'frontend', 2, CAST(N'2021-03-01' AS Date), N'~/Content/images/203003405html.png', 3, N'introduction for webdevelopment , html ,css, javascript , jquery , bootstrap')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (10, N'Data structure & Algorithm', 2, CAST(N'2021-05-01' AS Date), N'~/Content/images/203432954images (3).jpg', 2, N'introduction of data structure and algorithm , advanced datastructure and algorithm ')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (11, N'java', 6, CAST(N'2021-07-01' AS Date), N'~/Content/images/203509412تنزيل (3).png', 1, N'intoduction of programing java Basics and java oop  trackes usig this language')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (12, N'back end developer', 1, CAST(N'2021-09-01' AS Date), N'~/Content/images/203611346backend.jpg', 1, N'introduction for webdevelopment , Entity framwork,Linq, Asp.Net MVC ')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (13, N'Andriod developer', 3, CAST(N'2022-01-01' AS Date), N'~/Content/images/203701040تنزيل.jpg', 3, N'introduction for Android development, xml java.windows form  ')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (14, N'cyber security', 6, CAST(N'2022-03-01' AS Date), N'~/Content/images/203804921تنزيل (2).jpg', 3, N' Database Management,Operating Systems. Computer Networks,.Network Management.,')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (15, N'Data science', 7, CAST(N'2022-05-01' AS Date), N'~/Content/images/203838634images.png', 1, N'Systems Security,Systems Security,')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (16, N'Data  anliyst', 7, CAST(N'2022-07-01' AS Date), N'~/Content/images/203937545images (1).jpg', 3, N' Database Management,Operating Systems. Computer Networks,.Network Management.,')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (17, N'Embede system', 4, CAST(N'2022-09-01' AS Date), N'~/Content/images/204022525تنزيل (1).jpg', 2, N' Database Management,Operating Systems. Computer Networks,.Network Management.,')
INSERT [dbo].[cours] ([id], [name], [teacher], [datestart], [imag], [dep], [contentcourse]) VALUES (19, N'Sql Serve 2014', 1, CAST(N'2023-02-01' AS Date), N'~/Content/images/204120345تنزيل (2).png', 2, N'inroduction of data base , and diffenece between sql server and my sql')
SET IDENTITY_INSERT [dbo].[cours] OFF
SET IDENTITY_INSERT [dbo].[data_of_student] ON 

INSERT [dbo].[data_of_student] ([id], [FirstName], [LastName], [gender], [Adress], [gamil], [telephone], [id_courese], [id_student]) VALUES (82, N'khaled', N'jamal', N'Male', N'Ahmed', N'Ali5@hotmail.com', N'01118168853', 7, N'126f202a-7a7c-4756-b6d8-ecb8077142c5')
INSERT [dbo].[data_of_student] ([id], [FirstName], [LastName], [gender], [Adress], [gamil], [telephone], [id_courese], [id_student]) VALUES (83, N'jhgjhgjh', N'jamal', N'Male', N'banisuaf', N'khaledjamal274@gmail.com', N'01118168853', 19, N'126f202a-7a7c-4756-b6d8-ecb8077142c5')
INSERT [dbo].[data_of_student] ([id], [FirstName], [LastName], [gender], [Adress], [gamil], [telephone], [id_courese], [id_student]) VALUES (1081, N'khaled', N'jamal', N'Male', N'Ahmed', N'Ali5@hotmail.com', N'6', 10, N'126f202a-7a7c-4756-b6d8-ecb8077142c5')
SET IDENTITY_INSERT [dbo].[data_of_student] OFF
SET IDENTITY_INSERT [dbo].[Department] ON 

INSERT [dbo].[Department] ([id], [name]) VALUES (1, N'Language')
INSERT [dbo].[Department] ([id], [name]) VALUES (2, N'Tiqnique')
INSERT [dbo].[Department] ([id], [name]) VALUES (3, N'Diploma')
SET IDENTITY_INSERT [dbo].[Department] OFF
INSERT [dbo].[Table_1] ([klsjh]) VALUES (1)
SET IDENTITY_INSERT [dbo].[trainer] ON 

INSERT [dbo].[trainer] ([id], [name]) VALUES (1, N'khaled gamal')
INSERT [dbo].[trainer] ([id], [name]) VALUES (2, N'mohamed hassan')
INSERT [dbo].[trainer] ([id], [name]) VALUES (3, N'Hossam hassan')
INSERT [dbo].[trainer] ([id], [name]) VALUES (4, N'Hazem Ammar')
INSERT [dbo].[trainer] ([id], [name]) VALUES (5, N'Amgad nady')
INSERT [dbo].[trainer] ([id], [name]) VALUES (6, N'kerilyes reyad ')
INSERT [dbo].[trainer] ([id], [name]) VALUES (7, N'essam zaky')
SET IDENTITY_INSERT [dbo].[trainer] OFF
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[cours]  WITH CHECK ADD  CONSTRAINT [FK_cours_Department] FOREIGN KEY([dep])
REFERENCES [dbo].[Department] ([id])
GO
ALTER TABLE [dbo].[cours] CHECK CONSTRAINT [FK_cours_Department]
GO
ALTER TABLE [dbo].[cours]  WITH CHECK ADD  CONSTRAINT [FK_cours_trainer] FOREIGN KEY([teacher])
REFERENCES [dbo].[trainer] ([id])
GO
ALTER TABLE [dbo].[cours] CHECK CONSTRAINT [FK_cours_trainer]
GO
ALTER TABLE [dbo].[data_of_student]  WITH CHECK ADD FOREIGN KEY([id_courese])
REFERENCES [dbo].[cours] ([id])
GO
ALTER TABLE [dbo].[data_of_student]  WITH CHECK ADD  CONSTRAINT [FK_data_of_student_AspNetUsers] FOREIGN KEY([id_student])
REFERENCES [dbo].[AspNetUsers] ([Id])
GO
ALTER TABLE [dbo].[data_of_student] CHECK CONSTRAINT [FK_data_of_student_AspNetUsers]
GO
