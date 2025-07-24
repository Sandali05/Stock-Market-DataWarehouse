USE [StockExchange_DW]
GO
/****** Object:  Table [dbo].[DimBrokers]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimBrokers](
	[BrokerSK] [int] IDENTITY(1,1) NOT NULL,
	[BrokerAlternativeID] [int] NULL,
	[BrokerNAme] [varchar](50) NULL,
	[LisenceNumber] [numeric](18, 0) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[City] [varchar](20) NULL,
	[State] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[InserttDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_DimBrokers] PRIMARY KEY CLUSTERED 
(
	[BrokerSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimCompany]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimCompany](
	[CompanySK] [int] IDENTITY(1,1) NOT NULL,
	[CompanyAlternativeKey] [int] NULL,
	[CompanyName] [varchar](50) NULL,
	[Sector] [varchar](50) NULL,
	[Tin] [decimal](5, 0) NULL,
	[Stae] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Ownership] [varchar](50) NULL,
	[InserttDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[CompanyAddress] [varchar](50) NULL,
 CONSTRAINT [PK_DimCompany] PRIMARY KEY CLUSTERED 
(
	[CompanySK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimDate]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimDate](
	[DateKey] [int] NOT NULL,
	[Date] [datetime] NULL,
	[FullDateUK] [char](10) NULL,
	[FullDateUSA] [char](10) NULL,
	[DayOfMonth] [varchar](2) NULL,
	[DaySuffix] [varchar](4) NULL,
	[DayName] [varchar](9) NULL,
	[DayOfWeekUSA] [char](1) NULL,
	[DayOfWeekUK] [char](1) NULL,
	[DayOfWeekInMonth] [varchar](2) NULL,
	[DayOfWeekInYear] [varchar](2) NULL,
	[DayOfQuarter] [varchar](3) NULL,
	[DayOfYear] [varchar](3) NULL,
	[WeekOfMonth] [varchar](1) NULL,
	[WeekOfQuarter] [varchar](2) NULL,
	[WeekOfYear] [varchar](2) NULL,
	[Month] [varchar](2) NULL,
	[MonthName] [varchar](9) NULL,
	[MonthOfQuarter] [varchar](2) NULL,
	[Quarter] [char](1) NULL,
	[QuarterName] [varchar](9) NULL,
	[Year] [char](4) NULL,
	[YearName] [char](7) NULL,
	[MonthYear] [char](10) NULL,
	[MMYYYY] [char](6) NULL,
	[FirstDayOfMonth] [date] NULL,
	[LastDayOfMonth] [date] NULL,
	[FirstDayOfQuarter] [date] NULL,
	[LastDayOfQuarter] [date] NULL,
	[FirstDayOfYear] [date] NULL,
	[LastDayOfYear] [date] NULL,
	[IsHolidaySL] [bit] NULL,
	[IsWeekday] [bit] NULL,
	[HolidaySL] [varchar](50) NULL,
	[isCurrentDay] [int] NULL,
	[isDataAvailable] [int] NULL,
	[isLatestDataAvailable] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[DateKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimShareHolder]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimShareHolder](
	[ShareHolderSK] [int] IDENTITY(1,1) NOT NULL,
	[ShareHolderAtrenativeID] [int] NOT NULL,
	[FirstName] [varchar](20) NOT NULL,
	[LastName] [varchar](40) NOT NULL,
	[DOB] [date] NOT NULL,
	[Email] [varchar](40) NOT NULL,
	[Phone] [varchar](30) NOT NULL,
	[Address] [varchar](50) NOT NULL,
	[City] [varchar](30) NOT NULL,
	[PostalCode] [varchar](5) NOT NULL,
	[State] [varchar](20) NOT NULL,
	[Country] [varchar](50) NOT NULL,
	[StartDate] [datetime] NULL,
	[EndDate] [datetime] NULL,
	[InserttDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_DimShareHolder] PRIMARY KEY CLUSTERED 
(
	[ShareHolderSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimShares]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimShares](
	[SharesSK] [int] IDENTITY(1,1) NOT NULL,
	[SharesAlternativeID] [int] NOT NULL,
	[CompanySK] [int] NOT NULL,
	[StockTricker] [varchar](5) NULL,
	[StockType] [varchar](5) NULL,
	[IPODate] [datetime] NULL,
	[Currency] [varchar](10) NULL,
	[InserDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
 CONSTRAINT [PK_DimShares] PRIMARY KEY CLUSTERED 
(
	[SharesSK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTempTxnUpdate]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTempTxnUpdate](
	[txn_id] [int] NULL,
	[accm_txn_complete_time] [datetime] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FactShareHoldersTrades]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FactShareHoldersTrades](
	[PortfolioID] [int] NULL,
	[ShareHolderSK] [int] NULL,
	[CreateDateKey] [int] NULL,
	[SrcPortfolioModifiedDate] [datetime] NULL,
	[TradeID] [int] NULL,
	[SharesSK] [int] NULL,
	[BrokerSK] [int] NULL,
	[TradeDateKey] [int] NULL,
	[TradeType] [varchar](50) NULL,
	[Quantity] [int] NULL,
	[PricePerShare] [decimal](10, 2) NULL,
	[ExchangeRate] [decimal](10, 4) NULL,
	[CommisionAmount] [decimal](10, 2) NULL,
	[TaxAmount] [decimal](10, 2) NULL,
	[SettlmentDateKey] [int] NULL,
	[SrcTradeModifiedDate] [datetime] NULL,
	[insertDate] [datetime] NULL,
	[ModifiedDate] [datetime] NULL,
	[accm_txn_create_time] [datetime] NULL,
	[accm_txn_complete_time] [datetime] NULL,
	[txn_process_time_hours] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[stgBrokers]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[stgBrokers](
	[BrokerID] [nvarchar](50) NULL,
	[BrokerName] [nvarchar](50) NULL,
	[Phone] [nvarchar](50) NULL,
	[Email] [nvarchar](50) NULL,
	[Address] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[State] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TempTxnUpdate]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TempTxnUpdate](
	[PortfolioID] [int] NULL,
	[accm_txn_complete_time] [datetime] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DimShares]  WITH CHECK ADD  CONSTRAINT [FK_DimShares_DimShares] FOREIGN KEY([SharesSK])
REFERENCES [dbo].[DimShares] ([SharesSK])
GO
ALTER TABLE [dbo].[DimShares] CHECK CONSTRAINT [FK_DimShares_DimShares]
GO
ALTER TABLE [dbo].[FactShareHoldersTrades]  WITH CHECK ADD  CONSTRAINT [CreateDateKey_fk] FOREIGN KEY([CreateDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactShareHoldersTrades] CHECK CONSTRAINT [CreateDateKey_fk]
GO
ALTER TABLE [dbo].[FactShareHoldersTrades]  WITH CHECK ADD  CONSTRAINT [FK_FactTradesDimBrokers] FOREIGN KEY([BrokerSK])
REFERENCES [dbo].[DimBrokers] ([BrokerSK])
GO
ALTER TABLE [dbo].[FactShareHoldersTrades] CHECK CONSTRAINT [FK_FactTradesDimBrokers]
GO
ALTER TABLE [dbo].[FactShareHoldersTrades]  WITH CHECK ADD  CONSTRAINT [SettlmentDateKey_fk] FOREIGN KEY([SettlmentDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactShareHoldersTrades] CHECK CONSTRAINT [SettlmentDateKey_fk]
GO
ALTER TABLE [dbo].[FactShareHoldersTrades]  WITH CHECK ADD  CONSTRAINT [Share_fk] FOREIGN KEY([SharesSK])
REFERENCES [dbo].[DimShares] ([SharesSK])
GO
ALTER TABLE [dbo].[FactShareHoldersTrades] CHECK CONSTRAINT [Share_fk]
GO
ALTER TABLE [dbo].[FactShareHoldersTrades]  WITH CHECK ADD  CONSTRAINT [TradeDateKey_fk] FOREIGN KEY([TradeDateKey])
REFERENCES [dbo].[DimDate] ([DateKey])
GO
ALTER TABLE [dbo].[FactShareHoldersTrades] CHECK CONSTRAINT [TradeDateKey_fk]
GO
/****** Object:  StoredProcedure [dbo].[UpdateCompany]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[UpdateCompany] 
@CompanyID int, 
@CompanyName varchar(50),
@CompanyAddress varchar(50),
@Sector varchar(50),
@Tin Decimal(5,0),
@Stae varchar(50),
@Country varchar(50),
@OwnerShip varchar(50)
AS 
BEGIN 
if not exists (select CompanySK 
from dbo.DimCompany 
where CompanyAlternativeKey = @CompanyID) 
BEGIN 
insert into dbo.DimCompany 
(CompanyAlternativeKey, CompanyName, Sector, Tin, Stae, Country, Ownership, InserttDate, ModifiedDate, CompanyAddress) 
values 
(@CompanyID, @CompanyName, @Sector, @Tin, @Stae, @Country, @OwnerShip, GETDATE(), GETDATE(), @CompanyAddress) 
END; 
if exists (select CompanySK 
from dbo.DimCompany 
where CompanyAlternativeKey = @CompanyID) 
BEGIN 
UPDATE dbo.DimCompany 
SET CompanyName = @CompanyName,
    Sector = @Sector,
    Tin = @Tin,
    Stae = @Stae,
    Country = @Country,
    Ownership = @OwnerShip,
    CompanyAddress = @CompanyAddress,
    ModifiedDate = GETDATE()
WHERE CompanyAlternativeKey = @CompanyID
END; 
END; 
GO
/****** Object:  StoredProcedure [dbo].[UpdateShares]    Script Date: 7/24/2025 10:18:17 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateShares] 
@SharesID int, 
@CompanySK int,
@StockTricker varchar(5),
@StockType varchar(5),
@IPODate datetime,
@Currency varchar(10)
AS 
BEGIN 
    -- If not exists, INSERT
    IF NOT EXISTS (SELECT SharesSK 
                   FROM dbo.DimShares 
                   WHERE SharesAlternativeID = @SharesID) 
    BEGIN 
        INSERT INTO dbo.DimShares 
        (SharesAlternativeID, CompanySK, StockTricker, StockType, IPODate, Currency, InserDate, ModifiedDate) 
        VALUES 
        (@SharesID, @CompanySK, @StockTricker, @StockType, @IPODate, @Currency, GETDATE(), GETDATE()) 
    END 

    -- If exists, UPDATE
    IF EXISTS (SELECT SharesSK 
               FROM dbo.DimShares 
               WHERE SharesAlternativeID = @SharesID) 
    BEGIN 
        UPDATE dbo.DimShares 
        SET CompanySK = @CompanySK,
            StockTricker = @StockTricker,
            StockType = @StockType,
            IPODate = @IPODate,
            Currency = @Currency,
            ModifiedDate = GETDATE()
        WHERE SharesAlternativeID = @SharesID
    END 
END
GO
