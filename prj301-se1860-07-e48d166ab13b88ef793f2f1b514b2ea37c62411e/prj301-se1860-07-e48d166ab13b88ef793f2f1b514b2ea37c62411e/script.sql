USE [BookingCinemaTicketsOnline]
GO
/****** Object:  Table [dbo].[ACCOUNT]    Script Date: 3/9/2024 12:46:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ACCOUNT](
	[userName] [varchar](200) NOT NULL,
	[password] [varchar](200) NOT NULL,
	[fullName] [nvarchar](200) NULL,
	[googleID] [varchar](200) NULL,
	[googleName] [varchar](200) NULL,
	[email] [varchar](200) NULL,
	[phoneNumber] [varchar](200) NULL,
	[gender] [nvarchar](200) NULL,
	[role] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BOOKING]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BOOKING](
	[bookingID] [uniqueidentifier] NOT NULL,
	[numberOfBooking] [int] NULL,
	[priceTotal] [money] NULL,
	[bookingDate] [date] NULL,
	[userName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[bookingID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CINEMA]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CINEMA](
	[cinemaID] [int] IDENTITY(1,1) NOT NULL,
	[cinemaName] [nvarchar](200) NULL,
	[city] [nvarchar](200) NULL,
	[address] [nvarchar](200) NULL,
	[hotline] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[cinemaID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MEMBERSHIP]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MEMBERSHIP](
	[memberID] [uniqueidentifier] NOT NULL,
	[totalSpend] [money] NULL,
	[discount] [int] NULL,
	[userName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[memberID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MOVIE]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MOVIE](
	[movieID] [int] IDENTITY(1,1) NOT NULL,
	[movieName] [nvarchar](200) NULL,
	[movieContent] [nvarchar](200) NULL,
	[actor] [nvarchar](200) NULL,
	[director] [nvarchar](200) NULL,
	[age] [int] NULL,
	[movieImage] [nvarchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[movieID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PAYMENT]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PAYMENT](
	[id] [decimal](19, 2) NOT NULL,
	[amount] [int] NULL,
	[orderInfo] [nvarchar](250) NULL,
	[responseCode] [char](1) NULL,
	[transactionNo] [int] NULL,
	[bank] [char](1) NULL,
	[payDate] [date] NULL,
	[transactionStatus] [bit] NULL,
	[bookingID] [uniqueidentifier] NULL,
	[userName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ROOM]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ROOM](
	[roomID] [int] IDENTITY(1,1) NOT NULL,
	[numberOfSeats] [int] NULL,
	[cinemaID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[roomID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SEATDETAILS]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SEATDETAILS](
	[seatID] [varchar](3) NOT NULL,
	[seatStatus] [bit] NULL,
	[roomID] [int] NULL,
	[showtimeID] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[seatID] ASC,
	[showtimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SHOWTIME]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SHOWTIME](
	[showTimeID] [int] IDENTITY(1,1) NOT NULL,
	[openDate] [date] NULL,
	[closeDate] [date] NULL,
	[hourStart] [time](7) NULL,
	[hourEnd] [time](7) NULL,
	[showStatus] [bit] NULL,
	[roomID] [int] NULL,
	[movieID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[showTimeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TICKET]    Script Date: 3/9/2024 12:46:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TICKET](
	[ticketID] [int] IDENTITY(1,1) NOT NULL,
	[showTimeID] [int] NULL,
	[seatID] [varchar](3) NULL,
	[bookingID] [uniqueidentifier] NULL,
PRIMARY KEY CLUSTERED 
(
	[ticketID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ACCOUNT] ([userName], [password], [fullName], [googleID], [googleName], [email], [phoneNumber], [gender], [role]) VALUES (N'nphuc11111@gmail.com', N'123', N'Nguyễn ', NULL, NULL, N'nphuc11111@gmail.com', N'707268418', N'Nam', 0)
INSERT [dbo].[ACCOUNT] ([userName], [password], [fullName], [googleID], [googleName], [email], [phoneNumber], [gender], [role]) VALUES (N'phucAdmin', N'123', NULL, NULL, NULL, NULL, NULL, N'Nam', 1)
GO
SET IDENTITY_INSERT [dbo].[CINEMA] ON 

INSERT [dbo].[CINEMA] ([cinemaID], [cinemaName], [city], [address], [hotline]) VALUES (1, N'Cinema1', N'HCM', N'thu duc', N'0123456789')
SET IDENTITY_INSERT [dbo].[CINEMA] OFF
GO
SET IDENTITY_INSERT [dbo].[MOVIE] ON 

INSERT [dbo].[MOVIE] ([movieID], [movieName], [movieContent], [actor], [director], [age], [movieImage]) VALUES (1, N'Nobita', N'1234', N'123', N'123', 123, N'123.jpg')
INSERT [dbo].[MOVIE] ([movieID], [movieName], [movieContent], [actor], [director], [age], [movieImage]) VALUES (2, N'Nobita', N'123', N'123', N'HÆ°ng NgÃ´', 1, N'Nobita.jpg')
INSERT [dbo].[MOVIE] ([movieID], [movieName], [movieContent], [actor], [director], [age], [movieImage]) VALUES (3, N'Dragon Ball', N'123', N'123', N'123', 1, N'DragonBallnull')
SET IDENTITY_INSERT [dbo].[MOVIE] OFF
GO
SET IDENTITY_INSERT [dbo].[ROOM] ON 

INSERT [dbo].[ROOM] ([roomID], [numberOfSeats], [cinemaID]) VALUES (3, 30, 1)
SET IDENTITY_INSERT [dbo].[ROOM] OFF
GO
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A0', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A0', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A1', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A1', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A2', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A2', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A3', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A3', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A4', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A4', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A5', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A5', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A6', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A6', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A7', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A7', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A8', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A8', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A9', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'A9', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B0', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B0', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B1', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B1', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B2', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B2', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B3', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B3', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B4', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B4', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B5', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B5', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B6', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B6', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B7', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B7', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B8', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B8', 1, 3, 28)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B9', 1, 3, 26)
INSERT [dbo].[SEATDETAILS] ([seatID], [seatStatus], [roomID], [showtimeID]) VALUES (N'B9', 1, 3, 28)
GO
SET IDENTITY_INSERT [dbo].[SHOWTIME] ON 

INSERT [dbo].[SHOWTIME] ([showTimeID], [openDate], [closeDate], [hourStart], [hourEnd], [showStatus], [roomID], [movieID]) VALUES (26, CAST(N'2024-03-09' AS Date), CAST(N'2024-03-09' AS Date), CAST(N'07:42:00' AS Time), CAST(N'08:42:00' AS Time), 0, 3, 1)
INSERT [dbo].[SHOWTIME] ([showTimeID], [openDate], [closeDate], [hourStart], [hourEnd], [showStatus], [roomID], [movieID]) VALUES (27, CAST(N'2024-03-09' AS Date), CAST(N'2024-03-10' AS Date), CAST(N'20:54:00' AS Time), CAST(N'21:54:00' AS Time), 0, 3, 1)
INSERT [dbo].[SHOWTIME] ([showTimeID], [openDate], [closeDate], [hourStart], [hourEnd], [showStatus], [roomID], [movieID]) VALUES (28, CAST(N'2024-03-08' AS Date), CAST(N'2024-03-09' AS Date), CAST(N'05:00:00' AS Time), CAST(N'06:00:00' AS Time), 1, 3, 1)
SET IDENTITY_INSERT [dbo].[SHOWTIME] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_userName]    Script Date: 3/9/2024 12:46:18 PM ******/
ALTER TABLE [dbo].[ACCOUNT] ADD  CONSTRAINT [UQ_userName] UNIQUE NONCLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_userName2]    Script Date: 3/9/2024 12:46:18 PM ******/
ALTER TABLE [dbo].[BOOKING] ADD  CONSTRAINT [UQ_userName2] UNIQUE NONCLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ_userName3]    Script Date: 3/9/2024 12:46:18 PM ******/
ALTER TABLE [dbo].[MEMBERSHIP] ADD  CONSTRAINT [UQ_userName3] UNIQUE NONCLUSTERED 
(
	[userName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BOOKING] ADD  DEFAULT (newid()) FOR [bookingID]
GO
ALTER TABLE [dbo].[MEMBERSHIP] ADD  DEFAULT (newid()) FOR [memberID]
GO
ALTER TABLE [dbo].[BOOKING]  WITH CHECK ADD  CONSTRAINT [FK_userName1] FOREIGN KEY([userName])
REFERENCES [dbo].[ACCOUNT] ([userName])
GO
ALTER TABLE [dbo].[BOOKING] CHECK CONSTRAINT [FK_userName1]
GO
ALTER TABLE [dbo].[MEMBERSHIP]  WITH CHECK ADD  CONSTRAINT [FK_user1] FOREIGN KEY([userName])
REFERENCES [dbo].[ACCOUNT] ([userName])
GO
ALTER TABLE [dbo].[MEMBERSHIP] CHECK CONSTRAINT [FK_user1]
GO
ALTER TABLE [dbo].[PAYMENT]  WITH CHECK ADD  CONSTRAINT [FK_bookingID2] FOREIGN KEY([bookingID])
REFERENCES [dbo].[BOOKING] ([bookingID])
GO
ALTER TABLE [dbo].[PAYMENT] CHECK CONSTRAINT [FK_bookingID2]
GO
ALTER TABLE [dbo].[PAYMENT]  WITH CHECK ADD  CONSTRAINT [FK_userName4] FOREIGN KEY([userName])
REFERENCES [dbo].[ACCOUNT] ([userName])
GO
ALTER TABLE [dbo].[PAYMENT] CHECK CONSTRAINT [FK_userName4]
GO
ALTER TABLE [dbo].[ROOM]  WITH CHECK ADD  CONSTRAINT [FK_cinemaID1] FOREIGN KEY([cinemaID])
REFERENCES [dbo].[CINEMA] ([cinemaID])
GO
ALTER TABLE [dbo].[ROOM] CHECK CONSTRAINT [FK_cinemaID1]
GO
ALTER TABLE [dbo].[SEATDETAILS]  WITH CHECK ADD  CONSTRAINT [FK_roomID2] FOREIGN KEY([roomID])
REFERENCES [dbo].[ROOM] ([roomID])
GO
ALTER TABLE [dbo].[SEATDETAILS] CHECK CONSTRAINT [FK_roomID2]
GO
ALTER TABLE [dbo].[SEATDETAILS]  WITH CHECK ADD  CONSTRAINT [FK_showTimeID2] FOREIGN KEY([showtimeID])
REFERENCES [dbo].[SHOWTIME] ([showTimeID])
GO
ALTER TABLE [dbo].[SEATDETAILS] CHECK CONSTRAINT [FK_showTimeID2]
GO
ALTER TABLE [dbo].[SHOWTIME]  WITH CHECK ADD  CONSTRAINT [FK_MovieID1] FOREIGN KEY([movieID])
REFERENCES [dbo].[MOVIE] ([movieID])
GO
ALTER TABLE [dbo].[SHOWTIME] CHECK CONSTRAINT [FK_MovieID1]
GO
ALTER TABLE [dbo].[SHOWTIME]  WITH CHECK ADD  CONSTRAINT [FK_roomID1] FOREIGN KEY([roomID])
REFERENCES [dbo].[ROOM] ([roomID])
GO
ALTER TABLE [dbo].[SHOWTIME] CHECK CONSTRAINT [FK_roomID1]
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD  CONSTRAINT [FK_bookingID1] FOREIGN KEY([bookingID])
REFERENCES [dbo].[BOOKING] ([bookingID])
GO
ALTER TABLE [dbo].[TICKET] CHECK CONSTRAINT [FK_bookingID1]
GO
ALTER TABLE [dbo].[TICKET]  WITH CHECK ADD  CONSTRAINT [FK_showTimeID1] FOREIGN KEY([showTimeID])
REFERENCES [dbo].[SHOWTIME] ([showTimeID])
GO
ALTER TABLE [dbo].[TICKET] CHECK CONSTRAINT [FK_showTimeID1]
GO
