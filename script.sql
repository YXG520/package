USE [master]
GO
/****** Object:  Database [游戏玩家管理系统]    Script Date: 2019/12/4 16:04:17 ******/
CREATE DATABASE [游戏玩家管理系统]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'游戏玩家管理系统', FILENAME = N'D:\sql server2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\游戏玩家管理系统.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'游戏玩家管理系统_log', FILENAME = N'D:\sql server2017\MSSQL14.MSSQLSERVER\MSSQL\DATA\游戏玩家管理系统_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [游戏玩家管理系统] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [游戏玩家管理系统].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [游戏玩家管理系统] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET ARITHABORT OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [游戏玩家管理系统] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [游戏玩家管理系统] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET  DISABLE_BROKER 
GO
ALTER DATABASE [游戏玩家管理系统] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [游戏玩家管理系统] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET RECOVERY FULL 
GO
ALTER DATABASE [游戏玩家管理系统] SET  MULTI_USER 
GO
ALTER DATABASE [游戏玩家管理系统] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [游戏玩家管理系统] SET DB_CHAINING OFF 
GO
ALTER DATABASE [游戏玩家管理系统] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [游戏玩家管理系统] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [游戏玩家管理系统] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'游戏玩家管理系统', N'ON'
GO
ALTER DATABASE [游戏玩家管理系统] SET QUERY_STORE = OFF
GO
USE [游戏玩家管理系统]
GO
/****** Object:  Table [dbo].[tb_totalPlayerlist]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_totalPlayerlist](
	[pid] [int] IDENTITY(1,1) NOT NULL,
	[pname] [varchar](30) NOT NULL,
	[gender] [char](2) NULL,
	[age] [int] NULL,
	[favorate_position] [varchar](10) NULL,
	[totalGamesInMatch] [int] NULL,
	[wingamesInMatch] [int] NULL,
	[winrateInMatch] [numeric](10, 2) NULL,
	[duanLevel] [varchar](10) NULL,
	[avgKda] [numeric](10, 2) NULL,
	[totalcontinue5kill] [int] NULL,
	[totacontinue4kill] [int] NULL,
	[totalcontinue3kill] [int] NULL,
	[total_jifen] [int] NULL,
	[total_kda] [numeric](10, 2) NULL,
	[total_top] [int] NULL,
	[total_ap] [int] NULL,
	[total_adc] [int] NULL,
	[total_jun] [int] NULL,
	[total_sup] [int] NULL,
	[favorite_hero] [varchar](20) NULL,
 CONSTRAINT [PK__tb_total__DD37D91A0251B345] PRIMARY KEY CLUSTERED 
(
	[pid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_tsingleMatchDetailRecord]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_tsingleMatchDetailRecord](
	[rid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[mid] [int] NOT NULL,
	[winOrFail] [char](2) NULL,
	[whichPosition] [varchar](10) NULL,
	[whichHero] [varchar](20) NULL,
	[totalKill] [int] NULL,
	[totalDeath] [int] NULL,
	[totalAid] [int] NULL,
	[kda] [numeric](10, 2) NULL,
	[killSoldiers] [int] NULL,
	[joinBattleRate] [numeric](10, 2) NULL,
	[totalDamage] [int] NULL,
	[totalMoney] [int] NULL,
	[controlScore] [float] NULL,
	[undertakedamage] [int] NULL,
	[scoreAndClearEyes] [int] NULL,
	[ifThreeKill] [char](2) NULL,
	[ifFourKill] [char](2) NULL,
	[ifFiveKill] [char](2) NULL,
	[equipment1] [varchar](50) NULL,
	[equipment2] [varchar](50) NULL,
	[equipment3] [varchar](50) NULL,
	[equipment4] [varchar](50) NULL,
	[equipment5] [varchar](50) NULL,
	[equipment6] [varchar](50) NULL,
	[single_jifen] [float] NULL,
	[whetherEscape] [char](2) NULL,
 CONSTRAINT [PK__tb_recor__C2B7EDE825A0E2CE] PRIMARY KEY CLUSTERED 
(
	[rid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[player_matchRecord]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[player_matchRecord]--玩家游戏记录视图
as
select top 10 tb_totalPlayerlist.pname,
tb_totalPlayerlist.gender,
tb_tsingleMatchDetailRecord.mid
,tb_tsingleMatchDetailRecord.winOrFail, 
tb_tsingleMatchDetailRecord.whichPosition,tb_tsingleMatchDetailRecord.whichHero,tb_tsingleMatchDetailRecord.totalKill,
tb_tsingleMatchDetailRecord.totalDeath,tb_tsingleMatchDetailRecord.totalAid, 
tb_tsingleMatchDetailRecord.kda,tb_tsingleMatchDetailRecord.joinBattleRate,
tb_tsingleMatchDetailRecord.totalMoney,tb_tsingleMatchDetailRecord.controlScore,tb_tsingleMatchDetailRecord.undertakedamage
,tb_tsingleMatchDetailRecord.scoreAndClearEyes,tb_tsingleMatchDetailRecord.ifThreeKill,tb_tsingleMatchDetailRecord.ifFourKill,
tb_tsingleMatchDetailRecord.ifFiveKill,tb_tsingleMatchDetailRecord.killSoldiers
from tb_tsingleMatchDetailRecord INNER JOIN 
tb_totalPlayerlist ON tb_totalPlayerlist.pid=tb_tsingleMatchDetailRecord.pid
GO
/****** Object:  Table [dbo].[tb_credit]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_credit](
	[cid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[time] [smalldatetime] NULL,
	[hero] [varchar](10) NULL,
	[creditchange] [int] NULL,
	[currentcreditmark] [int] NULL,
	[reason] [varchar](100) NULL,
 CONSTRAINT [PK__tb_credi__D837D05F9AD66100] PRIMARY KEY CLUSTERED 
(
	[cid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[player_credit]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[player_credit]--玩家信誉积分视图
as
select tb_totalPlayerlist.pname, tb_credit.time,tb_credit.hero,tb_credit.creditchange,tb_credit.reason,tb_credit.currentcreditmark
from tb_credit INNER JOIN tb_totalPlayerlist ON tb_totalPlayerlist.pid=tb_credit.pid
GO
/****** Object:  Table [dbo].[heroPool]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[heroPool](
	[hid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NOT NULL,
	[heroName] [varchar](20) NULL,
	[totalHeroScenes] [int] NULL,
	[heroWinScenes] [int] NULL,
	[heroRate] [numeric](10, 2) NULL,
 CONSTRAINT [PK__heroPool__DF101B017C339B10] PRIMARY KEY CLUSTERED 
(
	[hid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[player_heroPool]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create view [dbo].[player_heroPool]--玩家信誉积分视图
as
select tb_totalPlayerlist.pname,tb_totalPlayerlist.favorite_hero, 
heroPool.heroName,heroPool.heroWinScenes,heroPool.totalHeroScenes,heroPool.heroRate
from heroPool INNER JOIN tb_totalPlayerlist ON tb_totalPlayerlist.pid=heroPool.pid
GO
/****** Object:  Table [dbo].[tb_cremark]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cremark](
	[remarkId] [int] IDENTITY(1,1) NOT NULL,
	[rid] [int] NOT NULL,
	[pid] [int] NOT NULL,
	[comments] [varchar](300) NOT NULL,
	[pinpointTime] [smalldatetime] NOT NULL,
 CONSTRAINT [PK__remark__2196A69FAB871CA9] PRIMARY KEY CLUSTERED 
(
	[remarkId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_cwordsDictionary]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_cwordsDictionary](
	[wid] [int] IDENTITY(1,1) NOT NULL,
	[badWords] [varchar](300) NULL,
 CONSTRAINT [PK__tb_cword__30F153BBFDAFF0B9] PRIMARY KEY CLUSTERED 
(
	[wid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_tactivePlayerlist]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_tactivePlayerlist](
	[apid] [int] IDENTITY(1,1) NOT NULL,
	[pid] [int] NULL,
	[position] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[apid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_totalMatchRecord]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_totalMatchRecord](
	[mid] [int] IDENTITY(1,1) NOT NULL,
	[red_top] [int] NOT NULL,
	[red_ap] [int] NOT NULL,
	[red_adc] [int] NOT NULL,
	[red_jun] [int] NOT NULL,
	[red_sup] [int] NOT NULL,
	[blue_top] [int] NOT NULL,
	[blue_ap] [int] NOT NULL,
	[blue_adc] [int] NOT NULL,
	[blue_jun] [int] NOT NULL,
	[blue_sup] [int] NOT NULL,
	[time] [smalldatetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[mid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tb_credit] ADD  CONSTRAINT [DF__tb_credit__time__5AEE82B9]  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[tb_totalMatchRecord] ADD  DEFAULT (getdate()) FOR [time]
GO
ALTER TABLE [dbo].[heroPool]  WITH CHECK ADD  CONSTRAINT [FK_totalPlayerlist] FOREIGN KEY([pid])
REFERENCES [dbo].[tb_totalPlayerlist] ([pid])
ON UPDATE CASCADE
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[heroPool] CHECK CONSTRAINT [FK_totalPlayerlist]
GO
ALTER TABLE [dbo].[tb_credit]  WITH CHECK ADD  CONSTRAINT [FK_pid] FOREIGN KEY([pid])
REFERENCES [dbo].[tb_totalPlayerlist] ([pid])
GO
ALTER TABLE [dbo].[tb_credit] CHECK CONSTRAINT [FK_pid]
GO
ALTER TABLE [dbo].[tb_cremark]  WITH CHECK ADD  CONSTRAINT [FK_tb_tsingleMatchDetailRecord_rid] FOREIGN KEY([rid])
REFERENCES [dbo].[tb_tsingleMatchDetailRecord] ([rid])
GO
ALTER TABLE [dbo].[tb_cremark] CHECK CONSTRAINT [FK_tb_tsingleMatchDetailRecord_rid]
GO
ALTER TABLE [dbo].[tb_tactivePlayerlist]  WITH CHECK ADD FOREIGN KEY([pid])
REFERENCES [dbo].[tb_totalPlayerlist] ([pid])
GO
ALTER TABLE [dbo].[tb_tsingleMatchDetailRecord]  WITH CHECK ADD  CONSTRAINT [FK__tb_record__mid__534D60F1] FOREIGN KEY([mid])
REFERENCES [dbo].[tb_totalMatchRecord] ([mid])
GO
ALTER TABLE [dbo].[tb_tsingleMatchDetailRecord] CHECK CONSTRAINT [FK__tb_record__mid__534D60F1]
GO
/****** Object:  StoredProcedure [dbo].[matchTask]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[matchTask] 
@pid int,
 @position varchar(10)--位置
as
  declare @total_jifen int           --积分id
  declare @red_top int         --红方上单ID
  declare @red_ap int          --红方中单ID
  declare @red_adc int         --红方下路ID
  declare @red_jun int         --红方打野ID
  declare @red_sup int         --红方辅助ID
  declare @blue_top int        --红方上单ID
  declare @blue_ap int         --红方中单ID
  declare @blue_adc int        --红方上单ID
  declare @blue_jun int        --红方上单ID
  declare @blue_sup int        --红方上单ID
  declare @currentcreditmark int--当前信誉分
  update tb_tactivePlayerlist set position=@position where pid=@pid
  select @currentcreditmark= tb_credit.currentcreditmark  from tb_credit where pid=@pid
  if (@currentcreditmark)>70
  begin
  select @total_jifen=total_jifen from tb_totalPlayerlist where pid= @pid
    select @position=position from tb_tactivePlayerlist where pid= @pid
  end
 else
 begin 
 set @position=null print '您的信誉分低于70分，请5分钟后再请求' print @currentcreditmark
 end
  if @position=null
    print '请先选择位置'
  if @position='上单'
    set @red_top=@pid
    select TOP 1 @red_ap=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_top=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
  if @position='中单'
    set @red_ap=@pid
    select TOP 1 @red_top=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_top=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()

  if @position='下路'
    set @red_adc=@pid
    select TOP 1 @red_top=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_top=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
  if @position='打野'
    set @red_jun=@pid
    select TOP 1 @red_top=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_top=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
  if @position='辅助'
    set @red_sup=@pid
   select TOP 1 @red_top=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @red_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_top=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_ap=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_adc=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_jun=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
    select TOP 1 @blue_sup=tb_tactivePlayerlist.pid  from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()

 --当红队队员与蓝队队员重复时，蓝队应该重新查找
   
   while @red_top=@blue_top
     select TOP 1 @blue_top=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='上单' and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
   while @red_ap=@blue_ap
     select TOP 1 @blue_ap=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='中单'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
   while @red_adc=@blue_adc
     select TOP 1 @blue_adc=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='下路'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
   while @red_jun=@blue_jun
     select TOP 1 @blue_jun=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='打野'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
   while @red_sup=@blue_sup
     select TOP 1 @blue_sup=tb_tactivePlayerlist.pid from tb_tactivePlayerlist,tb_totalPlayerlist,tb_credit where position='辅助'and tb_credit.currentcreditmark >70 and tb_totalPlayerlist.total_jifen between @total_jifen-200 and @total_jifen+200 order by NEWID()
   insert into tb_totalMatchRecord (red_top,red_ap,red_adc,red_jun,red_sup,blue_top,blue_ap,blue_adc,blue_jun,blue_sup) 
     values(@red_top,@red_ap,@red_adc,@red_jun,@red_sup,@blue_top,@blue_ap,@blue_adc,@blue_jun,@blue_sup)
GO
/****** Object:  StoredProcedure [dbo].[resultTask]    Script Date: 2019/12/4 16:04:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[resultTask] 
  @pid int,--球员id
  @mid int ,--比赛id
  @whetherEscape char(2),--玩家在本场比赛中的是否逃跑
  @winOrFail char(2),--结果 ‘胜’或‘负’
  @whichPosition varchar(10),--玩家在本场比赛中选择的位置
  @whichHero varchar(10),--玩家在本场比赛中选择的英雄
  @totalKill int,--玩家在本场比赛中选择的杀人数
  @totalDeath int,--玩家在本场比赛中死亡数
  @totalAid int,--玩家在本场比赛中的助攻数
  @killSoldiers int,--玩家在本场比赛中的补兵数
  @joinBattleRate numeric(10, 2),--玩家在本场比赛中的参团率
  @totalMoney int,--玩家在本场比赛中的获取的经济
  @controlScore int,--玩家在本场比赛中的控制得分
  @undertakedamage  int,--玩家在本场比赛中的承受的伤害
  @scoreAndClearEyes int,--玩家在本场比赛中清理地方视野和插眼的分数
  @ifThreeKill char(2),--玩家在本场比赛中是否三杀
  @ifFourKill char(2),--玩家在本场比赛中是否四杀
  @ifFiveKill char(2),--玩家在本场比赛中是否五杀
  @totalDamage int,--玩家在本场比赛中的总伤害
  @equipment1 varchar(50),--玩家在本场比赛中的装备一
  @equipment2 varchar(50),--玩家在本场比赛中的装备二
  @equipment3 varchar(50),--玩家在本场比赛中的装备三
  @equipment4 varchar(50),--玩家在本场比赛中的装备四
  @equipment5 varchar(50),--玩家在本场比赛中的装备五
  @equipment6 varchar(50),--玩家在本场比赛中的装备六
  @comments varchar(300)--玩家在本场比赛中的评论
as
  declare @single_jifen int --本场评分
  declare @total_jifen int 
  declare @totalGamesInMatch int --玩家匹配总场数
  declare @kda numeric(10, 2)--单场kda分数
  declare @Ered float--红队预计胜率 
  declare @Eblue float--蓝队预计胜率 
  declare @red_avgjifen int --红队平均积分
  declare @blue_avgjifen int --蓝队平均积分
  declare @red_top_jifen int --红队上单积分 
  declare @red_ap_jifen int --红队中单积分
  declare @red_adc_jifen int--红队下路积分
  declare @red_jun_jifen int --红队打野积分
  declare @red_sup_jifen int --红队辅助积分 
  declare @blue_top_jifen int --蓝队上单积分
  declare @blue_ap_jifen int --蓝队中单积分
  declare @blue_adc_jifen int --蓝队下路积分
  declare @blue_jun_jifen int --蓝队打野积分
  declare @blue_sup_jifen int --蓝队辅助积分
  declare @rid int --比赛场次的id
  select @red_top_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select red_top from tb_totalMatchRecord where mid =@mid))
  select @red_ap_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select red_ap from tb_totalMatchRecord where mid =@mid))
  select @red_adc_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select red_adc from tb_totalMatchRecord where mid =@mid))
  select @red_jun_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select red_jun from tb_totalMatchRecord where mid =@mid))
  select @red_sup_jifen=(select  total_jifen from tb_totalPlayerlist where pid =(select red_sup from tb_totalMatchRecord where mid =@mid))
  select @blue_top_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select blue_top from tb_totalMatchRecord where mid =@mid))
  select @blue_ap_jifen=(select  total_jifen from tb_totalPlayerlist where pid =(select blue_ap from tb_totalMatchRecord where mid =@mid))
  select @blue_adc_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select blue_adc from tb_totalMatchRecord where mid =@mid))
  select @blue_jun_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select blue_jun from tb_totalMatchRecord where mid =@mid))
  select @blue_sup_jifen=(select total_jifen from tb_totalPlayerlist where pid =(select blue_sup from tb_totalMatchRecord where mid =@mid))
  select @total_jifen= total_jifen from tb_totalPlayerlist where pid=@pid
  set @red_avgjifen=(@red_top_jifen+@red_ap_jifen+@red_adc_jifen+@red_sup_jifen+@red_sup_jifen)/5
  set @blue_avgjifen=(@blue_top_jifen+@blue_ap_jifen+@blue_adc_jifen+@blue_sup_jifen+@blue_sup_jifen)/5
  --函数方法实现算法计算
  set @Ered=((1.0)/(1+power( 10, ((@red_avgjifen-@blue_avgjifen)/400))))
  set @Eblue=((1.0)/(1+power( 10, ((@red_avgjifen-@blue_avgjifen)/400))))
  --set @Ered=1/(1+10^((@red_avgjifen-@blue_avgjifen)/400))--正常方法实现计算
  --set @Eblue=1/(1+10^((@blue_avgjifen-@red_avgjifen)/400))--正常方法实现计算  
  set @kda=((@totalKill +@totalAid)/@totalDeath)*3
  set @totalGamesInMatch=1
--判断该玩家是在红队还是蓝队
  if @pid in --如果该玩家在蓝队
    ((select blue_top from tb_totalMatchRecord where mid=@mid),
	(select blue_ap from tb_totalMatchRecord where mid=@mid),
	(select blue_adc from tb_totalMatchRecord where mid=@mid),
	(select blue_jun from tb_totalMatchRecord where mid=@mid),
	(select blue_sup from tb_totalMatchRecord where mid=@mid))
	begin
	  if @whetherEscape='否'
	  begin
	    if @winOrFail='胜'
	      set @single_jifen =32*(1-@Eblue)
	    else if @winOrFail='败'
	      set @single_jifen =32*(0-@Eblue)
	  end
	  else if @whetherEscape='是'
	      set @single_jifen =32*(0-@Eblue)
    end

  if @pid in --如果该玩家在红队
    ((select red_top from tb_totalMatchRecord where mid=@mid),
    (select red_ap from tb_totalMatchRecord where mid=@mid),
    (select red_adc from tb_totalMatchRecord where mid=@mid),
    (select red_jun from tb_totalMatchRecord where mid=@mid),
    (select red_sup from tb_totalMatchRecord where mid=@mid))
	begin
	if @whetherEscape='否'
	  begin
	    if @winOrFail='胜'
	      set @single_jifen =32*(1-@Ered)
	    else if @winOrFail='败'
	      set @single_jifen =32*(0-@Ered)
	  end

	  else if @whetherEscape='是'
	    begin
	      set @single_jifen =32*(0-@Ered)
		end
	end
  insert into tb_tsingleMatchDetailRecord (pid,mid,winorfail,whichPosition,whichHero,totalKill
,totalDeath,totalAid,kda,killSoldiers,joinBattleRate,totalDamage,totalMoney,controlScore,undertakedamage
,scoreAndClearEyes,ifThreeKill,ifFourKill,ifFiveKill,equipment1,equipment2,equipment3,equipment4,
equipment5,equipment6,single_jifen,whetherEscape)values(@pid,@mid,@winorfail,@whichPosition,
@whichHero,@totalKill
,@totalDeath,@totalAid,@kda,@killSoldiers,@joinBattleRate,@totalDamage,@totalMoney,@controlScore,
@undertakedamage
,@scoreAndClearEyes,@ifThreeKill,@ifFourKill,@ifFiveKill,@equipment1,@equipment2,@equipment3,@equipment4,
@equipment5,@equipment6,@single_jifen,@whetherEscape)
   set @rid=(select top 1 rid from tb_tsingleMatchDetailRecord where pid=@pid order by rid desc)
 insert into tb_cremark (rid,pid,comments,pinpointTime)values(@rid,@pid,@comments,getDate())
GO
USE [master]
GO
ALTER DATABASE [游戏玩家管理系统] SET  READ_WRITE 
GO
