USE [cms]
GO

/****** Object:  Table [CMSWEB].[CODE_VALUE_T]    Script Date: 10/4/2016 11:54:39 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [CMSWEB].[CODE_VALUE_T](
	[OBJECTID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[CODE] [nchar](50) NOT NULL,
	[CODE_GROUP] [nchar](50) NOT NULL,
	[SHORT_DESCRIPTION] [nchar](100) NOT NULL,
	[LONG_DESCRIPTION] [nchar](100) NULL,
	[EFFECTIVE_DATETIME] [datetime] NULL,
	[EFFECTIVE_THRU_DATETIME] [datetime] NULL,
	[ROW_CREATED_DATETIME] [datetime] NOT NULL,
	[ROW_CREATED_BY] [nchar](100) NOT NULL,
	[ROW_LAST_CHANGED_DATETIME] [datetime] NOT NULL,
	[ROW_LAST_CHANGED_BY] [nchar](100) NOT NULL,
 CONSTRAINT [PK_CODE_VALUE_T] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [CMSWEB].[ROLE_T](
	[OBJECTID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[ROLE_NAME] [nchar](50) NOT NULL,
	[EFFECTIVE_DATETIME] [datetime] NULL,
	[EFFECTIVE_THRU_DATETIME] [datetime] NULL,
	[ROW_CREATED_DATETIME] [datetime] NOT NULL,
	[ROW_CREATED_BY] [nchar](100) NOT NULL,
	[ROW_LAST_CHANGED_DATETIME] [datetime] NOT NULL,
	[ROW_LAST_CHANGED_BY] [nchar](100) NOT NULL,
 CONSTRAINT [PK_ROLE_T] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [CMSWEB].[USER_T](
	[OBJECTID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[USERNAME] [nchar](50) NOT NULL,
	[PASSWORD] [nchar](150) NOT NULL,
	[ENABLED_FLAG] [nchar](1) NOT NULL,
	[ROW_CREATED_DATETIME] [datetime] NOT NULL,
	[ROW_CREATED_BY] [nchar](100) NOT NULL,
	[ROW_LAST_CHANGED_DATETIME] [datetime] NOT NULL,
	[ROW_LAST_CHANGED_BY] [nchar](100) NOT NULL,
 CONSTRAINT [PK_USER_T] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

CREATE TABLE [CMSWEB].[USER_ROLE_T](
	[OBJECTID] [numeric](18, 0) IDENTITY(1,1) NOT NULL,
	[USER_OID] [numeric](18, 0) NOT NULL,
	[ROLE_OID] [numeric](18, 0) NOT NULL,
 CONSTRAINT [PK_USER_ROLE_T] PRIMARY KEY CLUSTERED 
(
	[OBJECTID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

ALTER TABLE [CMSWEB].[USER_ROLE_T]  WITH CHECK ADD  CONSTRAINT [FK_USER_ROLE_T_ROLE_T] FOREIGN KEY([ROLE_OID])
REFERENCES [CMSWEB].[ROLE_T] ([OBJECTID])
GO

ALTER TABLE [CMSWEB].[USER_ROLE_T] CHECK CONSTRAINT [FK_USER_ROLE_T_ROLE_T]
GO

ALTER TABLE [CMSWEB].[USER_ROLE_T]  WITH CHECK ADD  CONSTRAINT [FK_USER_ROLE_T_USER_T] FOREIGN KEY([USER_OID])
REFERENCES [CMSWEB].[USER_T] ([OBJECTID])
GO

ALTER TABLE [CMSWEB].[USER_ROLE_T] CHECK CONSTRAINT [FK_USER_ROLE_T_USER_T]
GO