USE [сеть отелей]
GO
/****** Object:  Table [dbo].[бронирование]    Script Date: 14.06.2023 15:39:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[бронирование](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_отеля] [int] NULL,
	[дата начала бронирования] [date] NULL,
	[дата окончания бронирования] [date] NULL,
	[количество дней] [int] NULL,
	[стоимость бронирования] [money] NULL,
	[id_гостя] [int] NULL,
	[Id_номера] [int] NULL,
 CONSTRAINT [PK_бронирование] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[гость]    Script Date: 14.06.2023 15:39:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[гость](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[имя] [nvarchar](50) NULL,
	[фамилия] [nvarchar](50) NULL,
	[адрес] [nvarchar](50) NULL,
	[телефон] [int] NULL,
	[электронная почта] [nvarchar](50) NULL,
 CONSTRAINT [PK_гость] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[номер]    Script Date: 14.06.2023 15:39:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[номер](
	[id] [int] NOT NULL,
	[тип] [nvarchar](50) NULL,
	[цена за ночь] [money] NULL,
	[количество комнат] [int] NULL,
	[доступность] [nvarchar](50) NULL,
	[id_отеля] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_номер] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[отель]    Script Date: 14.06.2023 15:39:11 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[отель](
	[id] [int] NOT NULL,
	[название] [nvarchar](50) NULL,
	[адрес] [nvarchar](50) NULL,
	[телефон] [int] NULL,
	[электронная почта] [nvarchar](50) NULL,
	[id_номера] [int] IDENTITY(1,1) NOT NULL,
 CONSTRAINT [PK_отель] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
