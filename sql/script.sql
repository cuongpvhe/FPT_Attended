
create database [FPT_Attended]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[email] [nvarchar](max) NOT NULL,
	[password] [nvarchar](max) NOT NULL,
	[isTeacher] [bit] NOT NULL,
 CONSTRAINT [PK_Account] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Account_Class]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account_Class](
	[CourseID] [int] NOT NULL,
	[AccountID] [int] NOT NULL,
	[ClassID] [int] NOT NULL,
 CONSTRAINT [PK_Account_Class] PRIMARY KEY CLUSTERED 
(
	[CourseID] ASC,
	[AccountID] ASC,
	[ClassID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Attended]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Attended](
	[roomid] [int] NOT NULL,
	[slotid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[studentid] [int] NOT NULL,
	[status] [bit] NOT NULL,
 CONSTRAINT [PK_Attended] PRIMARY KEY CLUSTERED 
(
	[roomid] ASC,
	[slotid] ASC,
	[date] ASC,
	[studentid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Class]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Class](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Course]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Course](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Course] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Room]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Room](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Room] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Session]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Session](
	[roomid] [int] NOT NULL,
	[slotid] [int] NOT NULL,
	[date] [date] NOT NULL,
	[courseid] [int] NOT NULL,
	[teacherId] [int] NOT NULL,
	[classID] [int] NOT NULL,
 CONSTRAINT [PK_Session] PRIMARY KEY CLUSTERED 
(
	[roomid] ASC,
	[slotid] ASC,
	[date] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Slot]    Script Date: 4/3/2023 11:17:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Slot](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Slot] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([id], [email], [password], [isTeacher]) VALUES (1, N'student@gmail.com', N'123', 0)
INSERT [dbo].[Account] ([id], [email], [password], [isTeacher]) VALUES (2, N'teacher@gmail.com', N'123', 1)
INSERT [dbo].[Account] ([id], [email], [password], [isTeacher]) VALUES (3, N'user@gmail.com', N'123', 0)
INSERT [dbo].[Account] ([id], [email], [password], [isTeacher]) VALUES (4, N'user1@gmail.com', N'123', 0)
INSERT [dbo].[Account] ([id], [email], [password], [isTeacher]) VALUES (5, N'teacher1@gmail.com', N'123', 1)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Account_Class] ([CourseID], [AccountID], [ClassID]) VALUES (1, 1, 1)
INSERT [dbo].[Account_Class] ([CourseID], [AccountID], [ClassID]) VALUES (1, 3, 1)
INSERT [dbo].[Account_Class] ([CourseID], [AccountID], [ClassID]) VALUES (1, 4, 2)
INSERT [dbo].[Account_Class] ([CourseID], [AccountID], [ClassID]) VALUES (2, 3, 2)
INSERT [dbo].[Account_Class] ([CourseID], [AccountID], [ClassID]) VALUES (2, 4, 2)
GO
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (1, 1, CAST(N'2023-07-04' AS Date), 1, 0)
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (1, 1, CAST(N'2023-07-04' AS Date), 3, 0)
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (1, 1, CAST(N'2023-07-08' AS Date), 1, 0)
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (1, 1, CAST(N'2023-07-08' AS Date), 3, 0)
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (1, 1, CAST(N'2023-07-11' AS Date), 1, 0)
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (1, 1, CAST(N'2023-07-11' AS Date), 3, 0)
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (2, 1, CAST(N'2023-07-04' AS Date), 1, 0)
INSERT [dbo].[Attended] ([roomid], [slotid], [date], [studentid], [status]) VALUES (2, 1, CAST(N'2023-07-04' AS Date), 3, 0)
GO
SET IDENTITY_INSERT [dbo].[Class] ON 

INSERT [dbo].[Class] ([id], [name]) VALUES (1, N'SE001')
INSERT [dbo].[Class] ([id], [name]) VALUES (2, N'S002')
SET IDENTITY_INSERT [dbo].[Class] OFF
GO
SET IDENTITY_INSERT [dbo].[Course] ON 

INSERT [dbo].[Course] ([id], [name]) VALUES (1, N'PRO192')
INSERT [dbo].[Course] ([id], [name]) VALUES (2, N'PRF192')
INSERT [dbo].[Course] ([id], [name]) VALUES (3, N'PRJ301')
INSERT [dbo].[Course] ([id], [name]) VALUES (4, N'SWP391')
INSERT [dbo].[Course] ([id], [name]) VALUES (5, N'WED201c')
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
SET IDENTITY_INSERT [dbo].[Room] ON 

INSERT [dbo].[Room] ([id], [name]) VALUES (1, N'DE207')
INSERT [dbo].[Room] ([id], [name]) VALUES (2, N'BE101')
INSERT [dbo].[Room] ([id], [name]) VALUES (3, N'BE201')
INSERT [dbo].[Room] ([id], [name]) VALUES (4, N'DE303')
INSERT [dbo].[Room] ([id], [name]) VALUES (5, N'DE307')
INSERT [dbo].[Room] ([id], [name]) VALUES (6, N'AL-502R')
SET IDENTITY_INSERT [dbo].[Room] OFF
GO
INSERT [dbo].[Session] ([roomid], [slotid], [date], [courseid], [teacherId], [classID]) VALUES (1, 1, CAST(N'2023-07-04' AS Date), 1, 2, 1)
INSERT [dbo].[Session] ([roomid], [slotid], [date], [courseid], [teacherId], [classID]) VALUES (1, 1, CAST(N'2023-07-08' AS Date), 1, 2, 1)
INSERT [dbo].[Session] ([roomid], [slotid], [date], [courseid], [teacherId], [classID]) VALUES (1, 1, CAST(N'2023-07-11' AS Date), 1, 2, 1)
INSERT [dbo].[Session] ([roomid], [slotid], [date], [courseid], [teacherId], [classID]) VALUES (2, 1, CAST(N'2023-07-04' AS Date), 1, 5, 1)
INSERT [dbo].[Session] ([roomid], [slotid], [date], [courseid], [teacherId], [classID]) VALUES (3, 1, CAST(N'2023-05-06' AS Date), 1, 2, 2)
GO
SET IDENTITY_INSERT [dbo].[Slot] ON 

INSERT [dbo].[Slot] ([id], [name]) VALUES (1, N'Slot 1')
INSERT [dbo].[Slot] ([id], [name]) VALUES (2, N'Slot 2')
INSERT [dbo].[Slot] ([id], [name]) VALUES (3, N'Slot 3')
INSERT [dbo].[Slot] ([id], [name]) VALUES (4, N'Slot 4')
INSERT [dbo].[Slot] ([id], [name]) VALUES (5, N'Slot 5')
INSERT [dbo].[Slot] ([id], [name]) VALUES (6, N'Slot 6')
INSERT [dbo].[Slot] ([id], [name]) VALUES (7, N'Slot 7')
INSERT [dbo].[Slot] ([id], [name]) VALUES (8, N'Slot 8')
INSERT [dbo].[Slot] ([id], [name]) VALUES (9, N'Slot 9')
SET IDENTITY_INSERT [dbo].[Slot] OFF
GO
ALTER TABLE [dbo].[Account_Class]  WITH CHECK ADD  CONSTRAINT [FK_Account_Class_Account] FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Account_Class] CHECK CONSTRAINT [FK_Account_Class_Account]
GO
ALTER TABLE [dbo].[Account_Class]  WITH CHECK ADD  CONSTRAINT [FK_Account_Class_Class] FOREIGN KEY([ClassID])
REFERENCES [dbo].[Class] ([id])
GO
ALTER TABLE [dbo].[Account_Class] CHECK CONSTRAINT [FK_Account_Class_Class]
GO
ALTER TABLE [dbo].[Account_Class]  WITH CHECK ADD  CONSTRAINT [FK_Account_Class_Course] FOREIGN KEY([CourseID])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Account_Class] CHECK CONSTRAINT [FK_Account_Class_Course]
GO
ALTER TABLE [dbo].[Attended]  WITH CHECK ADD  CONSTRAINT [FK_Attended_Account] FOREIGN KEY([studentid])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Attended] CHECK CONSTRAINT [FK_Attended_Account]
GO
ALTER TABLE [dbo].[Attended]  WITH CHECK ADD  CONSTRAINT [FK_Attended_Session] FOREIGN KEY([roomid], [slotid], [date])
REFERENCES [dbo].[Session] ([roomid], [slotid], [date])
GO
ALTER TABLE [dbo].[Attended] CHECK CONSTRAINT [FK_Attended_Session]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Account] FOREIGN KEY([teacherId])
REFERENCES [dbo].[Account] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Account]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Class] FOREIGN KEY([classID])
REFERENCES [dbo].[Class] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Class]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Course] FOREIGN KEY([courseid])
REFERENCES [dbo].[Course] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Course]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Room] FOREIGN KEY([roomid])
REFERENCES [dbo].[Room] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Room]
GO
ALTER TABLE [dbo].[Session]  WITH CHECK ADD  CONSTRAINT [FK_Session_Slot] FOREIGN KEY([slotid])
REFERENCES [dbo].[Slot] ([id])
GO
ALTER TABLE [dbo].[Session] CHECK CONSTRAINT [FK_Session_Slot]
GO
