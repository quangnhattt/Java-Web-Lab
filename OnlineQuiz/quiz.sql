USE [online_quiz_2]
GO
/****** Object:  Table [dbo].[answer]    Script Date: 7/26/2021 9:53:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[answer](
	[questionId] [int] NOT NULL,
	[answer] [nvarchar](max) NOT NULL,
	[isTrue] [bit] NOT NULL,
	[id] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_answer] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[question]    Script Date: 7/26/2021 9:53:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[question](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[question] [nvarchar](max) NOT NULL,
	[dateCreate] [date] NOT NULL,
 CONSTRAINT [PK_question] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[resultTest]    Script Date: 7/26/2021 9:53:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[resultTest](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[uId] [int] NULL,
	[mark] [float] NULL,
	[startTime] [datetime] NULL,
	[endTime] [datetime] NULL,
	[isPassed] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/26/2021 9:53:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[username] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[isTeacher] [bit] NOT NULL,
	[email] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK_user] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[answer] ON 

INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (6, N'6', 1, 12)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (6, N'5', 0, 13)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (6, N'4', 0, 14)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (6, N'3', 0, 15)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (26, N'123', 0, 89)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (26, N'195', 1, 90)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (26, N'111', 0, 91)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (26, N'121', 0, 92)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (27, N'Because it is enjoy', 0, 93)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (27, N'I don''t know', 0, 94)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (27, N'Because it is enough', 0, 95)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (27, N'Because it is the beginning of', 1, 96)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (28, N'In your house', 0, 97)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (28, N'In the dictionary', 1, 98)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (28, N'In my heart', 0, 99)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (28, N'In your wallet', 0, 100)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (29, N'Hand', 0, 101)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (29, N'Robot', 0, 102)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (29, N'Armchair', 1, 103)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (29, N'Phone', 0, 104)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (30, N'1', 1, 105)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (30, N'2', 0, 106)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (30, N'3', 0, 107)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (30, N'4', 0, 108)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (31, N'3', 0, 109)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (31, N'2', 0, 110)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (31, N'1', 0, 111)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (31, N'16', 1, 112)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (32, N'30', 1, 113)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (32, N'1', 0, 114)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (32, N'12', 0, 115)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (32, N'111', 0, 116)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (33, N'3', 0, 117)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (33, N'4', 0, 118)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (33, N'5', 0, 119)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (33, N'6', 1, 120)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (34, N'44', 1, 121)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (34, N'33', 0, 122)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (34, N'11', 0, 123)
INSERT [dbo].[answer] ([questionId], [answer], [isTrue], [id]) VALUES (34, N'55', 0, 124)
SET IDENTITY_INSERT [dbo].[answer] OFF
GO
SET IDENTITY_INSERT [dbo].[question] ON 

INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (6, N'3 * 2 = ?', CAST(N'2020-04-04' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (26, N'How many countries in the world?', CAST(N'2021-07-21' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (27, N'Why is the letter E so important?', CAST(N'2021-07-21' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (28, N'Where can you always find money?', CAST(N'2021-07-21' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (29, N'What has arms but can not hug?', CAST(N'2021-07-21' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (30, N'1 * 1 = ?', CAST(N'2021-07-24' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (31, N'4 * 4 = ?', CAST(N'2021-07-25' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (32, N'25 + 5 = ?', CAST(N'2021-07-25' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (33, N'1 + 5 = ?', CAST(N'2021-07-25' AS Date))
INSERT [dbo].[question] ([id], [question], [dateCreate]) VALUES (34, N'22 + 22 = ?', CAST(N'2021-07-26' AS Date))
SET IDENTITY_INSERT [dbo].[question] OFF
GO
SET IDENTITY_INSERT [dbo].[resultTest] ON 

INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (1, 1, 3.3, CAST(N'2021-07-23T13:19:31.000' AS DateTime), CAST(N'2021-07-23T13:19:39.000' AS DateTime), 0)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (2, 1, 3.3, CAST(N'2021-07-23T13:19:31.000' AS DateTime), CAST(N'2021-07-23T13:19:39.000' AS DateTime), 0)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (3, 33, 6.7, CAST(N'2021-07-25T22:35:45.000' AS DateTime), CAST(N'2021-07-25T22:35:58.000' AS DateTime), 1)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (4, 33, 6.7, CAST(N'2021-07-25T22:35:45.000' AS DateTime), CAST(N'2021-07-25T22:35:58.000' AS DateTime), 1)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (5, 33, 6.7, CAST(N'2021-07-25T22:51:15.000' AS DateTime), CAST(N'2021-07-25T22:51:22.000' AS DateTime), 1)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (6, 33, 6.7, CAST(N'2021-07-25T22:51:15.000' AS DateTime), CAST(N'2021-07-25T22:51:22.000' AS DateTime), 1)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (7, 33, 0, CAST(N'2021-07-25T22:51:27.000' AS DateTime), CAST(N'2021-07-25T22:51:33.000' AS DateTime), 0)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (8, 33, 0, CAST(N'2021-07-25T22:51:27.000' AS DateTime), CAST(N'2021-07-25T22:51:33.000' AS DateTime), 0)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (9, 33, 10, CAST(N'2021-07-25T22:53:04.000' AS DateTime), CAST(N'2021-07-25T22:53:09.000' AS DateTime), 1)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (10, 33, 10, CAST(N'2021-07-25T22:53:04.000' AS DateTime), CAST(N'2021-07-25T22:53:09.000' AS DateTime), 1)
INSERT [dbo].[resultTest] ([id], [uId], [mark], [startTime], [endTime], [isPassed]) VALUES (11, 33, 10, CAST(N'2021-07-25T22:57:11.000' AS DateTime), CAST(N'2021-07-25T22:57:17.000' AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[resultTest] OFF
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([id], [username], [password], [isTeacher], [email]) VALUES (1, N'user1', N'12345', 0, N'user1@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [isTeacher], [email]) VALUES (33, N'teacher1', N'12345', 1, N'teacher1@gmail.com')
INSERT [dbo].[user] ([id], [username], [password], [isTeacher], [email]) VALUES (34, N'sdfdsf', N'sdfdsfds', 1, N'nguyentuanvu1395@gmail.com')
SET IDENTITY_INSERT [dbo].[user] OFF
GO
