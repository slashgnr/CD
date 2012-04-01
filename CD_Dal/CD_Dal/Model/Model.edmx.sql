
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, and Azure
-- --------------------------------------------------
-- Date Created: 03/23/2012 14:07:03
-- Generated from EDMX file: C:\Users\Tomer\Documents\Visual Studio 2010\WebSites\CD\CD_Dal\CD_Dal\Model\Model.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MSSQL_tzura];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[tzura_menahem].[FK_CD_AlbumGenreRelation_CD_Albums]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_AlbumGenreRelation] DROP CONSTRAINT [FK_CD_AlbumGenreRelation_CD_Albums];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_AlbumGenreRelation_CD_Genres]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_AlbumGenreRelation] DROP CONSTRAINT [FK_CD_AlbumGenreRelation_CD_Genres];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_Albums_CD_Albums]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_Albums] DROP CONSTRAINT [FK_CD_Albums_CD_Albums];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_Items_CD_Artists]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_Items] DROP CONSTRAINT [FK_CD_Items_CD_Artists];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_Items_CD_EntityTypes]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_Items] DROP CONSTRAINT [FK_CD_Items_CD_EntityTypes];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_Items_CD_Jobs]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_Items] DROP CONSTRAINT [FK_CD_Items_CD_Jobs];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_Jobs_CD_Jobs]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_Jobs] DROP CONSTRAINT [FK_CD_Jobs_CD_Jobs];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_MainRelations_CD_Albums]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_MainRelations] DROP CONSTRAINT [FK_CD_MainRelations_CD_Albums];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_MainRelations_CD_Artists]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_MainRelations] DROP CONSTRAINT [FK_CD_MainRelations_CD_Artists];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_MainRelations_CD_Songs]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_MainRelations] DROP CONSTRAINT [FK_CD_MainRelations_CD_Songs];
GO
IF OBJECT_ID(N'[tzura_menahem].[FK_CD_MainRelations_CD_SongVersions]', 'F') IS NOT NULL
    ALTER TABLE [tzura_menahem].[CD_MainRelations] DROP CONSTRAINT [FK_CD_MainRelations_CD_SongVersions];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[tzura_menahem].[CD_AlbumGenreRelation]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_AlbumGenreRelation];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Albums]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Albums];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Artists]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Artists];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Countries]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Countries];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_EntityTypes]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_EntityTypes];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Genres]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Genres];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Items]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Items];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_ItemTypes]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_ItemTypes];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Jobs]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Jobs];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Languages]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Languages];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_MainRelations]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_MainRelations];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Songs]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Songs];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_SongVersions]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_SongVersions];
GO
IF OBJECT_ID(N'[tzura_menahem].[CD_Users]', 'U') IS NOT NULL
    DROP TABLE [tzura_menahem].[CD_Users];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'CD_AlbumGenreRelation'
CREATE TABLE [dbo].[CD_AlbumGenreRelation] (
    [AlbumGenreRelationID] int IDENTITY(1,1) NOT NULL,
    [AlbumID] decimal(18,0)  NULL,
    [GenreID] int  NULL,
    [TimeStamp] datetime  NULL
);
GO

-- Creating table 'CD_Albums'
CREATE TABLE [dbo].[CD_Albums] (
    [AlbumID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [AlbumName] nvarchar(500)  NULL,
    [Tracks] smallint  NULL,
    [Year] datetime  NULL,
    [YearTxt] nvarchar(500)  NULL,
    [Type] smallint  NULL,
    [Timestamps] datetime  NULL,
    [UpdateDate] datetime  NULL,
    [Userid] decimal(18,0)  NULL,
    [CDDB] nvarchar(50)  NULL,
    [MBID] nvarchar(50)  NULL,
    [PublisherID] int  NULL,
    [LanguageID] int  NULL,
    [CountryID] int  NULL
);
GO

-- Creating table 'CD_Artists'
CREATE TABLE [dbo].[CD_Artists] (
    [ArtistID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [ArtistName] nvarchar(500)  NULL,
    [MisSpelling] nvarchar(500)  NULL,
    [Timestamp] datetime  NULL,
    [UpdateDate] datetime  NULL,
    [UserId] decimal(18,0)  NULL
);
GO

-- Creating table 'CD_Countries'
CREATE TABLE [dbo].[CD_Countries] (
    [CountryID] int IDENTITY(1,1) NOT NULL,
    [CountryName] nvarchar(500)  NULL
);
GO

-- Creating table 'CD_EntityTypes'
CREATE TABLE [dbo].[CD_EntityTypes] (
    [EntityTypeID] int IDENTITY(1,1) NOT NULL,
    [EntityTypeName] nvarchar(500)  NULL
);
GO

-- Creating table 'CD_Genres'
CREATE TABLE [dbo].[CD_Genres] (
    [GenreID] int IDENTITY(1,1) NOT NULL,
    [GenreName] nvarchar(500)  NULL
);
GO

-- Creating table 'CD_Items'
CREATE TABLE [dbo].[CD_Items] (
    [ItemID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [ItemType] int  NULL,
    [ItemData] nvarchar(2000)  NULL,
    [EntityTypeID] int  NULL,
    [EntityID] decimal(18,0)  NULL,
    [EntityType_Related] int  NULL,
    [JobID_Related] int  NULL,
    [PersonID_Related] decimal(18,0)  NULL,
    [IsActive] bit  NULL,
    [UserID] decimal(18,0)  NULL,
    [TimeStamp] datetime  NULL
);
GO

-- Creating table 'CD_ItemTypes'
CREATE TABLE [dbo].[CD_ItemTypes] (
    [ItemTypeID] int IDENTITY(1,1) NOT NULL,
    [ItemTypeName] nvarchar(50)  NULL
);
GO

-- Creating table 'CD_Jobs'
CREATE TABLE [dbo].[CD_Jobs] (
    [JobID] int IDENTITY(1,1) NOT NULL,
    [JobName] nvarchar(500)  NULL
);
GO

-- Creating table 'CD_Languages'
CREATE TABLE [dbo].[CD_Languages] (
    [LanguageID] int IDENTITY(1,1) NOT NULL,
    [Language] nvarchar(500)  NULL
);
GO

-- Creating table 'CD_MainRelations'
CREATE TABLE [dbo].[CD_MainRelations] (
    [RelationID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [SongID] decimal(18,0)  NULL,
    [SongVersionID] decimal(18,0)  NULL,
    [AlbumID] decimal(18,0)  NULL,
    [ArtistID] decimal(18,0)  NULL,
    [OrderNum] decimal(18,0)  NULL,
    [TimeStamp] datetime  NULL
);
GO

-- Creating table 'CD_Songs'
CREATE TABLE [dbo].[CD_Songs] (
    [SongID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [SongName] nvarchar(500)  NULL,
    [SongMisspelling] nvarchar(500)  NULL,
    [Lyrics] nvarchar(max)  NULL,
    [FreeTxt] nvarchar(max)  NULL,
    [Timestamp] datetime  NULL,
    [LastUpdate] datetime  NULL,
    [Userid] decimal(18,0)  NULL
);
GO

-- Creating table 'CD_SongVersions'
CREATE TABLE [dbo].[CD_SongVersions] (
    [SongVersionsID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [SongID] decimal(18,0)  NULL,
    [Length] datetime  NULL,
    [TimeStamp] datetime  NULL,
    [UpdateDate] datetime  NULL,
    [UserID] decimal(18,0)  NULL
);
GO

-- Creating table 'CD_Users'
CREATE TABLE [dbo].[CD_Users] (
    [UserID] decimal(18,0) IDENTITY(1,1) NOT NULL,
    [FirstName] nvarchar(500)  NULL,
    [LastName] nvarchar(50)  NULL,
    [Email] nvarchar(300)  NULL,
    [Password] nvarchar(2000)  NULL,
    [Salt] nvarchar(2000)  NULL,
    [GenderID] smallint  NULL,
    [BirthDate] datetime  NULL,
    [BirthDateHeb] nvarchar(500)  NULL,
    [TimeStamp] datetime  NULL,
    [LastVisitDate] datetime  NULL,
    [LastIP] nvarchar(20)  NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [AlbumGenreRelationID] in table 'CD_AlbumGenreRelation'
ALTER TABLE [dbo].[CD_AlbumGenreRelation]
ADD CONSTRAINT [PK_CD_AlbumGenreRelation]
    PRIMARY KEY CLUSTERED ([AlbumGenreRelationID] ASC);
GO

-- Creating primary key on [AlbumID] in table 'CD_Albums'
ALTER TABLE [dbo].[CD_Albums]
ADD CONSTRAINT [PK_CD_Albums]
    PRIMARY KEY CLUSTERED ([AlbumID] ASC);
GO

-- Creating primary key on [ArtistID] in table 'CD_Artists'
ALTER TABLE [dbo].[CD_Artists]
ADD CONSTRAINT [PK_CD_Artists]
    PRIMARY KEY CLUSTERED ([ArtistID] ASC);
GO

-- Creating primary key on [CountryID] in table 'CD_Countries'
ALTER TABLE [dbo].[CD_Countries]
ADD CONSTRAINT [PK_CD_Countries]
    PRIMARY KEY CLUSTERED ([CountryID] ASC);
GO

-- Creating primary key on [EntityTypeID] in table 'CD_EntityTypes'
ALTER TABLE [dbo].[CD_EntityTypes]
ADD CONSTRAINT [PK_CD_EntityTypes]
    PRIMARY KEY CLUSTERED ([EntityTypeID] ASC);
GO

-- Creating primary key on [GenreID] in table 'CD_Genres'
ALTER TABLE [dbo].[CD_Genres]
ADD CONSTRAINT [PK_CD_Genres]
    PRIMARY KEY CLUSTERED ([GenreID] ASC);
GO

-- Creating primary key on [ItemID] in table 'CD_Items'
ALTER TABLE [dbo].[CD_Items]
ADD CONSTRAINT [PK_CD_Items]
    PRIMARY KEY CLUSTERED ([ItemID] ASC);
GO

-- Creating primary key on [ItemTypeID] in table 'CD_ItemTypes'
ALTER TABLE [dbo].[CD_ItemTypes]
ADD CONSTRAINT [PK_CD_ItemTypes]
    PRIMARY KEY CLUSTERED ([ItemTypeID] ASC);
GO

-- Creating primary key on [JobID] in table 'CD_Jobs'
ALTER TABLE [dbo].[CD_Jobs]
ADD CONSTRAINT [PK_CD_Jobs]
    PRIMARY KEY CLUSTERED ([JobID] ASC);
GO

-- Creating primary key on [LanguageID] in table 'CD_Languages'
ALTER TABLE [dbo].[CD_Languages]
ADD CONSTRAINT [PK_CD_Languages]
    PRIMARY KEY CLUSTERED ([LanguageID] ASC);
GO

-- Creating primary key on [RelationID] in table 'CD_MainRelations'
ALTER TABLE [dbo].[CD_MainRelations]
ADD CONSTRAINT [PK_CD_MainRelations]
    PRIMARY KEY CLUSTERED ([RelationID] ASC);
GO

-- Creating primary key on [SongID] in table 'CD_Songs'
ALTER TABLE [dbo].[CD_Songs]
ADD CONSTRAINT [PK_CD_Songs]
    PRIMARY KEY CLUSTERED ([SongID] ASC);
GO

-- Creating primary key on [SongVersionsID] in table 'CD_SongVersions'
ALTER TABLE [dbo].[CD_SongVersions]
ADD CONSTRAINT [PK_CD_SongVersions]
    PRIMARY KEY CLUSTERED ([SongVersionsID] ASC);
GO

-- Creating primary key on [UserID] in table 'CD_Users'
ALTER TABLE [dbo].[CD_Users]
ADD CONSTRAINT [PK_CD_Users]
    PRIMARY KEY CLUSTERED ([UserID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [AlbumID] in table 'CD_AlbumGenreRelation'
ALTER TABLE [dbo].[CD_AlbumGenreRelation]
ADD CONSTRAINT [FK_CD_AlbumGenreRelation_CD_Albums]
    FOREIGN KEY ([AlbumID])
    REFERENCES [dbo].[CD_Albums]
        ([AlbumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_AlbumGenreRelation_CD_Albums'
CREATE INDEX [IX_FK_CD_AlbumGenreRelation_CD_Albums]
ON [dbo].[CD_AlbumGenreRelation]
    ([AlbumID]);
GO

-- Creating foreign key on [GenreID] in table 'CD_AlbumGenreRelation'
ALTER TABLE [dbo].[CD_AlbumGenreRelation]
ADD CONSTRAINT [FK_CD_AlbumGenreRelation_CD_Genres]
    FOREIGN KEY ([GenreID])
    REFERENCES [dbo].[CD_Genres]
        ([GenreID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_AlbumGenreRelation_CD_Genres'
CREATE INDEX [IX_FK_CD_AlbumGenreRelation_CD_Genres]
ON [dbo].[CD_AlbumGenreRelation]
    ([GenreID]);
GO

-- Creating foreign key on [AlbumID] in table 'CD_Albums'
ALTER TABLE [dbo].[CD_Albums]
ADD CONSTRAINT [FK_CD_Albums_CD_Albums]
    FOREIGN KEY ([AlbumID])
    REFERENCES [dbo].[CD_Albums]
        ([AlbumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [AlbumID] in table 'CD_MainRelations'
ALTER TABLE [dbo].[CD_MainRelations]
ADD CONSTRAINT [FK_CD_MainRelations_CD_Albums]
    FOREIGN KEY ([AlbumID])
    REFERENCES [dbo].[CD_Albums]
        ([AlbumID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_MainRelations_CD_Albums'
CREATE INDEX [IX_FK_CD_MainRelations_CD_Albums]
ON [dbo].[CD_MainRelations]
    ([AlbumID]);
GO

-- Creating foreign key on [PersonID_Related] in table 'CD_Items'
ALTER TABLE [dbo].[CD_Items]
ADD CONSTRAINT [FK_CD_Items_CD_Artists]
    FOREIGN KEY ([PersonID_Related])
    REFERENCES [dbo].[CD_Artists]
        ([ArtistID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_Items_CD_Artists'
CREATE INDEX [IX_FK_CD_Items_CD_Artists]
ON [dbo].[CD_Items]
    ([PersonID_Related]);
GO

-- Creating foreign key on [ArtistID] in table 'CD_MainRelations'
ALTER TABLE [dbo].[CD_MainRelations]
ADD CONSTRAINT [FK_CD_MainRelations_CD_Artists]
    FOREIGN KEY ([ArtistID])
    REFERENCES [dbo].[CD_Artists]
        ([ArtistID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_MainRelations_CD_Artists'
CREATE INDEX [IX_FK_CD_MainRelations_CD_Artists]
ON [dbo].[CD_MainRelations]
    ([ArtistID]);
GO

-- Creating foreign key on [EntityTypeID] in table 'CD_Items'
ALTER TABLE [dbo].[CD_Items]
ADD CONSTRAINT [FK_CD_Items_CD_EntityTypes]
    FOREIGN KEY ([EntityTypeID])
    REFERENCES [dbo].[CD_EntityTypes]
        ([EntityTypeID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_Items_CD_EntityTypes'
CREATE INDEX [IX_FK_CD_Items_CD_EntityTypes]
ON [dbo].[CD_Items]
    ([EntityTypeID]);
GO

-- Creating foreign key on [JobID_Related] in table 'CD_Items'
ALTER TABLE [dbo].[CD_Items]
ADD CONSTRAINT [FK_CD_Items_CD_Jobs]
    FOREIGN KEY ([JobID_Related])
    REFERENCES [dbo].[CD_Jobs]
        ([JobID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_Items_CD_Jobs'
CREATE INDEX [IX_FK_CD_Items_CD_Jobs]
ON [dbo].[CD_Items]
    ([JobID_Related]);
GO

-- Creating foreign key on [JobID] in table 'CD_Jobs'
ALTER TABLE [dbo].[CD_Jobs]
ADD CONSTRAINT [FK_CD_Jobs_CD_Jobs]
    FOREIGN KEY ([JobID])
    REFERENCES [dbo].[CD_Jobs]
        ([JobID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [SongID] in table 'CD_MainRelations'
ALTER TABLE [dbo].[CD_MainRelations]
ADD CONSTRAINT [FK_CD_MainRelations_CD_Songs]
    FOREIGN KEY ([SongID])
    REFERENCES [dbo].[CD_Songs]
        ([SongID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_MainRelations_CD_Songs'
CREATE INDEX [IX_FK_CD_MainRelations_CD_Songs]
ON [dbo].[CD_MainRelations]
    ([SongID]);
GO

-- Creating foreign key on [SongVersionID] in table 'CD_MainRelations'
ALTER TABLE [dbo].[CD_MainRelations]
ADD CONSTRAINT [FK_CD_MainRelations_CD_SongVersions]
    FOREIGN KEY ([SongVersionID])
    REFERENCES [dbo].[CD_SongVersions]
        ([SongVersionsID])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_CD_MainRelations_CD_SongVersions'
CREATE INDEX [IX_FK_CD_MainRelations_CD_SongVersions]
ON [dbo].[CD_MainRelations]
    ([SongVersionID]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------