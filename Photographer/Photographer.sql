USE [photographer]
GO
/****** Object:  Table [dbo].[Gallery]    Script Date: 27/09/2021 3:57:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[pictureCover] [nvarchar](50) NULL,
	[description] [text] NULL,
 CONSTRAINT [PK_Introduction] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Gallery_Picture]    Script Date: 27/09/2021 3:57:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Gallery_Picture](
	[galleryId] [int] NOT NULL,
	[pictureId] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhotographerInfor]    Script Date: 27/09/2021 3:57:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhotographerInfor](
	[id] [int] NOT NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[phone] [nvarchar](max) NULL,
	[email] [varchar](50) NULL,
	[about] [nvarchar](max) NULL,
	[special_image] [varchar](50) NULL,
	[title] [nvarchar](max) NULL,
	[map] [varchar](50) NULL,
 CONSTRAINT [PK_PhotographerInfor] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Picture]    Script Date: 27/09/2021 3:57:48 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Picture](
	[id] [int] NOT NULL,
	[picture] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (1, N'Gallery 1', N'1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation.Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (2, N'Gallery 2', N'2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (3, N'Gallery 3', N'3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (4, N'Gallery 4', N'4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (5, N'Gallery 5', N'5.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (6, N'Gallery 6', N'6.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (7, N'Gallery 7', N'7.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (8, N'Gallery 8', N'8.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (9, N'Gallery 9', N'1.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (10, N'Gallery 10', N'2.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (11, N'Gallery 11', N'3.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
INSERT [dbo].[Gallery] ([id], [name], [pictureCover], [description]) VALUES (12, N'Gallery 12', N'4.jpg', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation')
GO
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (1, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (2, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (3, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (4, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (5, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (6, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (7, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (8, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 5)
GO
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (10, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (9, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (11, 12)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 1)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 2)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 3)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 4)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 5)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 6)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 7)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 8)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 9)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 10)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 11)
INSERT [dbo].[Gallery_Picture] ([galleryId], [pictureId]) VALUES (12, 12)
GO
INSERT [dbo].[PhotographerInfor] ([id], [address], [city], [country], [phone], [email], [about], [special_image], [title], [map]) VALUES (1, N'Hoa Lac', N'Ha Noi', N'Viet Nam', N'0868126615', N'giangtong3005@gmail.com', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim', N'max.jpg', N'Lorem ipsum dolor sit amet', N'map.png')
GO
INSERT [dbo].[Picture] ([id], [picture]) VALUES (1, N'1.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (2, N'2.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (3, N'3.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (4, N'4.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (5, N'5.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (6, N'6.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (7, N'7.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (8, N'8.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (9, N'1.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (10, N'2.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (11, N'3.jpg')
INSERT [dbo].[Picture] ([id], [picture]) VALUES (12, N'4.jpg')
GO
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([galleryId])
REFERENCES [dbo].[Gallery] ([id])
GO
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([pictureId])
REFERENCES [dbo].[Picture] ([id])
GO
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([pictureId])
REFERENCES [dbo].[Picture] ([id])
GO
ALTER TABLE [dbo].[Gallery_Picture]  WITH CHECK ADD FOREIGN KEY([pictureId])
REFERENCES [dbo].[Picture] ([id])
GO
