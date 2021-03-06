USE [onlinecourseDB]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[accountID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](255) NULL,
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[email] [nvarchar](255) NOT NULL,
	[phone] [nvarchar](255) NULL,
	[dateofbirth] [date] NULL,
	[hashCode] [text] NULL,
	[activeStatus] [bit] NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[accountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BillOrder]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOrder](
	[oderID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NOT NULL,
	[orderDate] [date] NOT NULL,
	[staffID] [int] NULL,
	[statusID] [int] NOT NULL,
 CONSTRAINT [PK_Invoice] PRIMARY KEY CLUSTERED 
(
	[oderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[BillOrderdetail]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BillOrderdetail](
	[orderID] [int] NOT NULL,
	[lectureID] [int] NOT NULL,
	[quantity] [int] NULL,
 CONSTRAINT [PK_InvoiceDetails] PRIMARY KEY CLUSTERED 
(
	[orderID] ASC,
	[lectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Category]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[catID] [int] IDENTITY(1,1) NOT NULL,
	[catName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[catID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Course]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[courseID] [int] IDENTITY(1,1) NOT NULL,
	[courseName] [nvarchar](max) NULL,
	[catID] [int] NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[courseID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Lecture]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lecture](
	[lectureID] [int] IDENTITY(1,1) NOT NULL,
	[courseID] [int] NULL,
	[lecturersID] [int] NULL,
	[name] [nvarchar](max) NULL,
	[lectureprice] [money] NULL,
	[description] [nvarchar](max) NULL,
	[video] [nvarchar](max) NULL,
	[picturecard] [nvarchar](max) NULL,
 CONSTRAINT [PK_Lecture] PRIMARY KEY CLUSTERED 
(
	[lectureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[LectureDetails]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LectureDetails](
	[lectureID] [int] NOT NULL,
	[lecturename] [nvarchar](max) NULL,
	[lecturePart] [nvarchar](max) NULL,
	[lectureDuration] [int] NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Staff]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staff](
	[staffID] [int] IDENTITY(1,1) NOT NULL,
	[fullname] [nvarchar](50) NULL,
	[dateofBirth] [date] NULL,
	[gender] [bit] NULL,
	[address] [nvarchar](50) NULL,
	[phone] [nvarchar](50) NULL,
	[username] [nvarchar](50) NULL,
	[password] [nvarchar](50) NULL,
	[admin] [bit] NULL,
 CONSTRAINT [PK_Staff] PRIMARY KEY CLUSTERED 
(
	[staffID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Status]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Status](
	[statusID] [int] IDENTITY(1,1) NOT NULL,
	[statusName] [nvarchar](50) NULL,
 CONSTRAINT [PK_Status] PRIMARY KEY CLUSTERED 
(
	[statusID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Teacher]    Script Date: 10/10/2021 21:55:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Teacher](
	[lecturersID] [int] IDENTITY(1,1) NOT NULL,
	[accountID] [int] NULL,
	[lecturersName] [nvarchar](max) NOT NULL,
	[specialize] [nvarchar](max) NOT NULL,
	[description] [nvarchar](max) NOT NULL,
	[numberofstudent] [int] NULL,
	[avatar] [nvarchar](max) NULL,
 CONSTRAINT [PK_Tutor] PRIMARY KEY CLUSTERED 
(
	[lecturersID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([accountID], [fullname], [username], [password], [email], [phone], [dateofbirth], [hashCode], [activeStatus]) VALUES (13, N'Nguyễn Thanh Bình', N'thanhbinh', N'12345678', N'09012897123', N'nguyenthanhbinh@gmail.com', CAST(N'1987-09-26' AS Date), NULL, 1)
INSERT [dbo].[Account] ([accountID], [fullname], [username], [password], [email], [phone], [dateofbirth], [hashCode], [activeStatus]) VALUES (14, N'Huỳnh Khắc Duy', N'huynhduy', N'12345678', N'0978123456', N'huynhkhacduy@gmail.com', CAST(N'1977-10-22' AS Date), NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
SET IDENTITY_INSERT [dbo].[BillOrder] ON 

INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (19, 14, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (20, 14, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (21, 14, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (22, 14, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (23, 13, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (24, 13, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (25, 13, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (26, 13, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (27, 13, CAST(N'2021-09-24' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (39, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (40, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (41, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (42, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (43, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (44, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (45, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (46, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (47, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (48, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (49, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (50, 13, CAST(N'2021-09-25' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (51, 14, CAST(N'2021-09-26' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (52, 13, CAST(N'2021-09-26' AS Date), NULL, 1)
INSERT [dbo].[BillOrder] ([oderID], [accountID], [orderDate], [staffID], [statusID]) VALUES (53, 13, CAST(N'2021-09-26' AS Date), 7, 1)
SET IDENTITY_INSERT [dbo].[BillOrder] OFF
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (19, 2, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (19, 3, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (20, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (20, 13, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (21, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (22, 4, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (23, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (24, 2, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (25, 2, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (26, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (27, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (39, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (40, 2, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (40, 6, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (42, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (43, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (44, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (45, 1, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (46, 3, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (47, 3, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (50, 6, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (51, 3, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (51, 5, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (51, 10, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (52, 2, NULL)
INSERT [dbo].[BillOrderdetail] ([orderID], [lectureID], [quantity]) VALUES (53, 2, NULL)
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([catID], [catName]) VALUES (1, N'Foreign Language')
INSERT [dbo].[Category] ([catID], [catName]) VALUES (2, N'Marketing')
INSERT [dbo].[Category] ([catID], [catName]) VALUES (3, N'IT & Software')
INSERT [dbo].[Category] ([catID], [catName]) VALUES (4, N'Photography')
INSERT [dbo].[Category] ([catID], [catName]) VALUES (5, N'Healthy')
INSERT [dbo].[Category] ([catID], [catName]) VALUES (6, N'ABCD')
SET IDENTITY_INSERT [dbo].[Category] OFF
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (1, N'English', 1)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (2, N'Korea', 1)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (3, N'Japanese', 1)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (4, N'Germany', 1)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (5, N'Chinese', 1)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (6, N'Zalo Marketing', 2)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (7, N'Google Ads', 2)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (8, N'Video Editor', 4)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (9, N'Take a photo', 4)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (10, N'Lập trình web', 3)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (12, N'Weight loss', 5)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (13, N'Fitness-Gym', 5)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (14, N'Yoga ', 5)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (19, N'Facebook Marketing 2', 6)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (27, N'Facebook Marketing 7', 3)
INSERT [dbo].[Course] ([courseID], [courseName], [catID]) VALUES (28, N'Facebook Marketing 8', 3)
SET IDENTITY_INSERT [dbo].[Course] OFF
SET IDENTITY_INSERT [dbo].[Lecture] ON 

INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (1, 1, 1, N'Communicative English for Beginner 1', 497000.0000, N'Communicative English course for people without roots arouses passion for English, confidently communicates in English like a native, opens up opportunities to study and work at multinational companies and be more confident in English. communicate with natives in any situation', NULL, N'11.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (2, 1, 2, N'Quick TOEIC for people who have lost their roots', 599000.0000, N'The online Toeic course is a comprehensive handbook to help you start studying for the Toeic exam from the most basic part: vocabulary, methods of analyzing sentences, words and images to help you easily memorize vocabulary and practice reflexes. more natural, easier and more confident in communication
', NULL, N'21.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (3, 1, 3, N'IELTS preparation online: listening, speaking, reading, writing', 700000.0000, N'Practice 4 skills, along with a detailed explanation of the exam structure, but note that when taking the test, you will confidently achieve 5 - 5.5 IELTS scores.
', NULL, N'31.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (4, 2, 4, N'Self-study Korean is easy - Beginner 1', 599000.0000, N'The beginner Korean course helps you improve your vocabulary, grammar by topic, confidently communicate with Korean people, and standard pronunciation - quick reflexes.
', NULL, N'42.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (5, 2, 5, N'Beginner Korean 1: Standard pronunciation, sure grammar
', 349000.0000, N'Helps you quickly grasp basic Korean knowledge from pronunciation, vocabulary to grammar.
', NULL, N'52.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (6, 2, 4, N'Self-study Korean is easy - Beginner 2', 599000.0000, N'The beginner Korean course 2 helps students improve their entire vocabulary, grammar, pronunciation, and reflexes in Korean, helping you to pass the TOPIK level 2 exam. You can confidently communicate in front of the crowd. or any other circumstances.
', NULL, N'42.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (7, 1, 1, N'Communicative English for Beginner 2', 597000.0000, N'Communicative English course for people without roots arouses passion for English, confidently communicates in English like a native, opens up opportunities to study and work at multinational companies and be more confident in English. communicate with natives in any situation', NULL, N'11.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (8, 1, 2, N'Quick TOEIC for people who have lost their roots 2', 699000.0000, N'The online Toeic course is a comprehensive handbook to help you start studying for the Toeic exam from the most basic part: vocabulary, methods of analyzing sentences, words and images to help you easily memorize vocabulary and practice reflexes. more natural, easier and more confident in communication
', NULL, N'21.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (9, 1, 3, N'IELTS preparation online: listening, speaking, reading, writing 2', 799000.0000, N'Practice 4 skills, along with a detailed explanation of the exam structure, but note that when taking the test, you will confidently achieve 5 - 5.5 IELTS scores.
', NULL, N'91.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (10, 7, 6, N'65 Top Google Ads advertising tricks to save you 50% of your budget
', 800000.0000, N'The first & only Google Adwords course that details step-by-step installation, advanced conversion tracking, and sums up anti-click hacks for a highly competitive industry.
', NULL, N'107.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (11, 7, 7, N'Google Shopping from A-Z', 850000.0000, N'The secret to help you set up and sell online effectively in both Vietnam and abroad, for anyone who wants to do an online business from home to get a stable high income.
', NULL, N'117.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (12, 7, 9, N'Google Ads combines facebook chatbot - Optimize sales funnel with landing pages
', 799000.0000, N'Teach you how to use sales funnels, lading pages, how to advertise Google Ads effectively, optimize costs to help you increase revenue, increase business efficiency immediately
', NULL, N'127.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (13, 7, 10, N'Seo Google Map Pro', 399000.0000, N'You will bring your products and brands to the top of Google yourself without spending money on running ads
', NULL, N'137.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (14, 9, 13, N'Photography techniques: Light and effects
', 599000.0000, N'The right method of lighting and effects in photography - provides the basics of camera function and operation to help you create amazing, one-of-a-kind photos
', NULL, N'149.png')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (15, 9, 15, N'
Edit image with camera raw from A to Z', 349000.0000, N'Operations with Camera Raw allow users to preserve image quality, which most other image editing software cannot do.
', NULL, N'159.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (16, 9, 16, N'Product photography for business
', 399000.0000, N'Help you create beautiful product images for your business.
', NULL, N'169.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (17, 6, 19, N'Zalo application in Administration - Business - Marketing
', 499000.0000, N'Confidently use Zalo application in business - administration in a simple way, saving a lot of costs, bringing unexpected business results for businesses and individuals
', NULL, N'176.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (18, 1, 20, N'The secret to getting a perfect score in the TOEIC Reading test', 590000.0000, N'The course taught by lecturer Nguyet Ca helps you understand how to do the types of reading comprehension passages in the TOEIC exam to get a high score as easily as you expect.', NULL, N'181.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (19, 1, 21, N'English communication for children from 10 - 15 years old', 345000.0000, N'The English communication course for children helps students to pronounce correctly, learn grammar, and combine listening and speaking communication. Confidence forms a natural reflex that helps to pin it to the subconscious, remember it longer
', NULL, N'191.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (20, 1, 22, N'9 Breakthrough English Listening Practice Steps
', 239000.0000, N'Learning English is not difficult, it''s just difficult when you don''t know how to break through. The course will help you master the steps of top-notch listening practice, helping your listening ability develop quickly.
', NULL, N'201.jpg')
INSERT [dbo].[Lecture] ([lectureID], [courseID], [lecturersID], [name], [lectureprice], [description], [video], [picturecard]) VALUES (21, 1, 23, N'American English pronunciation for Vietnamese people
', 699000.0000, N'A course that helps Vietnamese people identify how to read vowels, consonants, stress, and phonetics of the standard American accent
', NULL, N'211.jpg')
SET IDENTITY_INSERT [dbo].[Lecture] OFF
SET IDENTITY_INSERT [dbo].[Staff] ON 

INSERT [dbo].[Staff] ([staffID], [fullname], [dateofBirth], [gender], [address], [phone], [username], [password], [admin]) VALUES (1, N'admin', CAST(N'1987-09-26' AS Date), 1, N'423 Trịnh Đình Trọng, Q.Tân Phú', N'0978123456', N'admin', N'admin', 1)
INSERT [dbo].[Staff] ([staffID], [fullname], [dateofBirth], [gender], [address], [phone], [username], [password], [admin]) VALUES (2, N'Nguyễn Thanh Bình', CAST(N'2001-07-31' AS Date), 1, N'136 Lạc Long Quân, Q.11', N'0981234512', N'thanhbinh', N'thanhbinh', 0)
INSERT [dbo].[Staff] ([staffID], [fullname], [dateofBirth], [gender], [address], [phone], [username], [password], [admin]) VALUES (3, N'Nguyễn Thị Ánh Hồng', CAST(N'1988-10-20' AS Date), 0, N'244 Phổ Quang, Q.Tân Bình', N'0921345613', N'anhhong', N'anhhong', 0)
INSERT [dbo].[Staff] ([staffID], [fullname], [dateofBirth], [gender], [address], [phone], [username], [password], [admin]) VALUES (7, N'Lê Ngọc Bích', CAST(N'1988-04-10' AS Date), 0, N'35, Đất Thánh, Q.Tân Bình', N'0908756141', N'ngocbich', N'ngocbich', 0)
INSERT [dbo].[Staff] ([staffID], [fullname], [dateofBirth], [gender], [address], [phone], [username], [password], [admin]) VALUES (8, N'Nguyễn Từ Tâm Viên', CAST(N'1977-10-16' AS Date), 1, N'210 Cống Lở, Q.Tân Bình', N'0937135107', N'tamvien', N'tamvien', 0)
INSERT [dbo].[Staff] ([staffID], [fullname], [dateofBirth], [gender], [address], [phone], [username], [password], [admin]) VALUES (10, N'Mã Văn Tài 1', CAST(N'1987-10-07' AS Date), 1, N'35, Đất Thánh, Q.Tân Bình', N'0908756141', N'vantai', N'vnvcnvmcv', 0)
SET IDENTITY_INSERT [dbo].[Staff] OFF
SET IDENTITY_INSERT [dbo].[Status] ON 

INSERT [dbo].[Status] ([statusID], [statusName]) VALUES (1, N'New Order')
INSERT [dbo].[Status] ([statusID], [statusName]) VALUES (2, N'Process')
INSERT [dbo].[Status] ([statusID], [statusName]) VALUES (3, N'Delivery')
INSERT [dbo].[Status] ([statusID], [statusName]) VALUES (4, N'Paid')
INSERT [dbo].[Status] ([statusID], [statusName]) VALUES (5, N'Finish')
SET IDENTITY_INSERT [dbo].[Status] OFF
SET IDENTITY_INSERT [dbo].[Teacher] ON 

INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (1, NULL, N'Th.s Ruby Thảo Trần', N'Master English
', N'Ruby Thảo Trần nhận bằng thạc sỹ Lý Luận và phương pháp giảng dạy tiếng Anh của Southern Queensland Australia University', 7643, N'thaotran.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (2, NULL, N'Đỗ Vân Anh', N'Vân Anh Athena', N'Ms Vân Anh Athena - CEO Trung tâm Anh ngữ Athena

900 TOEIC', 436, N'vananh.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (3, NULL, N'Bùi Đức Tiến', N'Master of Linguistics', N' EMC - English Master Center', 1216, N'ductien.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (4, NULL, N'Nguyễn Văn Khánh', N'Korean Interpreter', N'Nguyen Van Khanh is an alumnus of the Korean Language Department, Hanoi University', 12919, N'vankhanh.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (5, NULL, N'Nguyễn Vy Thảo Trang', N'Lecturers', N'Master in Korean Education in Foreign Languages, Dongguk University (Seoul)', 432, N'thaotrang.png')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (6, NULL, N'Bùi Quang Cường', N'Founder & CEO iViet FPT', N'Marketing lecturer at FPT University, Vietnam Internet Association & Vietnam Digital Media Association
', 4973, N'quangcuong.png')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (7, NULL, N'Nguyễn Ngọc Long', N'Leader Team IVIET Solution', N'Nguyen Ngoc Long - Leader of Google Ads Team IVIET SOLUTION

Deploying hundreds of large and small customers at IVIET SOLUTION', 7810, N'ngoclong.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (9, NULL, N'Vũ Ngọc Quyền', N'Founder of PAcademy', N'Vu Ngoc Quyen is the Founder of PAcademy Academy, Real Chien Digital Marketing Training Center

- Administrator of the PGroup Business Community. Support members to synchronously deploy Online Marketing Channel System with the latest Business model', 6457, N'ngochuyen.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (10, NULL, N'Phạm Thanh Bình', N'CEO HBA Education', N'CEO HBA EDUCATION & TRAINING DEVELOPMENT CO., LTD
5 years of experience as a development director for foreign corporations: PEB Steel, Nippon Steel, Amway, Nuskin...
', 545, N'thanhbinh.png')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (13, NULL, N'Phí Công Huy', N'Lecturers SCB ', N'Lecturer of the Faculty of Multimedia, in charge of the subject of Photography Techniques and Cinematography - Institute of Post and Telecommunications Technology.
', 931, N'conghuy.png')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (15, NULL, N'Vũ Minh Hiếu', N'Lecturers GSC', N'6 years of experience in using Photoshop software
2 years of experience holding the camera and working with the studio
', 155, N'minhhieu.png')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (16, NULL, N'Nguyễn Phan Lương', N'Commercial Photography', N'8 Years of Experience in Commercial Photography & Commercial Video.

3 Years of teaching experience in photography and Photoshop.', 207, N'phanluong.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (19, NULL, N'Giàng Thuận Ý', N'Marketing Expert
', N'Currently, Giang Thuan Y is an expert in the field of Online Marketing such as: Amazon, Facebook, Zalo... Specializing in support, consulting, training, transferring work processes and cooperating with Organizations and Individuals in need. in the above fields. Used to be the Sales Director (Development of Business - Marketing strategies, Business system setup, Business administration and management team).
', 345, N'ythuan.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (20, NULL, N'Nguyệt Ca', N'Director of ENCI Education Group', N'Being the first generation of the talented bachelor''s class in the English Department of Hanoi University', 3931, N'nguyetca.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (21, NULL, N'Huong Elena', N'English teacher at ETC . English Center', N'Instructor Huong Elena graduated from University of Foreign Languages ​​- Vietnam National University, Hanoi, possessing TESOL certificate', 4621, N'huongelena.png')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (22, NULL, N'Hannah Phạm', N'Founder of iYOLO English Academy', N'Founder of iYOLO English Academy

Expert in English training combined with thinking

Product Research and Development Specialist', 2111, N'hannahpham.jpg')
INSERT [dbo].[Teacher] ([lecturersID], [accountID], [lecturersName], [specialize], [description], [numberofstudent], [avatar]) VALUES (23, NULL, N'Lan Bercu', N'Lead Across Cultures International', N'Lan Bercu with nearly 10 years of training at events and training classes for more than 20,000 US teachers
', 3461, N'lanbercu.jpg')
SET IDENTITY_INSERT [dbo].[Teacher] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Account]    Script Date: 10/10/2021 21:55:45 ******/
ALTER TABLE [dbo].[Account] ADD  CONSTRAINT [IX_Account] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Staff]    Script Date: 10/10/2021 21:55:45 ******/
ALTER TABLE [dbo].[Staff] ADD  CONSTRAINT [IX_Staff] UNIQUE NONCLUSTERED 
(
	[username] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BillOrder]  WITH CHECK ADD  CONSTRAINT [FK_BillOrder_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[BillOrder] CHECK CONSTRAINT [FK_BillOrder_Account]
GO
ALTER TABLE [dbo].[BillOrder]  WITH CHECK ADD  CONSTRAINT [FK_BillOrder_Staff] FOREIGN KEY([staffID])
REFERENCES [dbo].[Staff] ([staffID])
GO
ALTER TABLE [dbo].[BillOrder] CHECK CONSTRAINT [FK_BillOrder_Staff]
GO
ALTER TABLE [dbo].[BillOrder]  WITH CHECK ADD  CONSTRAINT [FK_BillOrder_Status] FOREIGN KEY([statusID])
REFERENCES [dbo].[Status] ([statusID])
GO
ALTER TABLE [dbo].[BillOrder] CHECK CONSTRAINT [FK_BillOrder_Status]
GO
ALTER TABLE [dbo].[BillOrderdetail]  WITH CHECK ADD  CONSTRAINT [FK_BillOrderdetail_BillOrder] FOREIGN KEY([orderID])
REFERENCES [dbo].[BillOrder] ([oderID])
GO
ALTER TABLE [dbo].[BillOrderdetail] CHECK CONSTRAINT [FK_BillOrderdetail_BillOrder]
GO
ALTER TABLE [dbo].[BillOrderdetail]  WITH CHECK ADD  CONSTRAINT [FK_BillOrderdetail_Lecture] FOREIGN KEY([lectureID])
REFERENCES [dbo].[Lecture] ([lectureID])
GO
ALTER TABLE [dbo].[BillOrderdetail] CHECK CONSTRAINT [FK_BillOrderdetail_Lecture]
GO
ALTER TABLE [dbo].[Course]  WITH CHECK ADD  CONSTRAINT [FK_Course_Category] FOREIGN KEY([catID])
REFERENCES [dbo].[Category] ([catID])
GO
ALTER TABLE [dbo].[Course] CHECK CONSTRAINT [FK_Course_Category]
GO
ALTER TABLE [dbo].[Lecture]  WITH CHECK ADD  CONSTRAINT [FK_Lecture_Course] FOREIGN KEY([courseID])
REFERENCES [dbo].[Course] ([courseID])
GO
ALTER TABLE [dbo].[Lecture] CHECK CONSTRAINT [FK_Lecture_Course]
GO
ALTER TABLE [dbo].[Lecture]  WITH CHECK ADD  CONSTRAINT [FK_Lecture_Tutor] FOREIGN KEY([lecturersID])
REFERENCES [dbo].[Teacher] ([lecturersID])
GO
ALTER TABLE [dbo].[Lecture] CHECK CONSTRAINT [FK_Lecture_Tutor]
GO
ALTER TABLE [dbo].[LectureDetails]  WITH CHECK ADD  CONSTRAINT [FK_LectureDetails_Lecture1] FOREIGN KEY([lectureID])
REFERENCES [dbo].[Lecture] ([lectureID])
GO
ALTER TABLE [dbo].[LectureDetails] CHECK CONSTRAINT [FK_LectureDetails_Lecture1]
GO
ALTER TABLE [dbo].[Teacher]  WITH CHECK ADD  CONSTRAINT [FK_Tutor_Account] FOREIGN KEY([accountID])
REFERENCES [dbo].[Account] ([accountID])
GO
ALTER TABLE [dbo].[Teacher] CHECK CONSTRAINT [FK_Tutor_Account]
GO
