
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 10/08/2023 19:29:22
-- Generated from EDMX file: C:\Users\wmike\OneDrive\Documentos\Renovación LIS\DatabaseManager\DatabaseModel.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Renovación LIS];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_ProfilesPlayers]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfilesSet] DROP CONSTRAINT [FK_ProfilesPlayers];
GO
IF OBJECT_ID(N'[dbo].[FK_CrucigramsWords_Crucigrams]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CrucigramsWords] DROP CONSTRAINT [FK_CrucigramsWords_Crucigrams];
GO
IF OBJECT_ID(N'[dbo].[FK_CrucigramsWords_Words]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CrucigramsWords] DROP CONSTRAINT [FK_CrucigramsWords_Words];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfilesCrucigrams_Profiles]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfilesCrucigrams] DROP CONSTRAINT [FK_ProfilesCrucigrams_Profiles];
GO
IF OBJECT_ID(N'[dbo].[FK_ProfilesCrucigrams_Crucigrams]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[ProfilesCrucigrams] DROP CONSTRAINT [FK_ProfilesCrucigrams_Crucigrams];
GO
IF OBJECT_ID(N'[dbo].[FK_CrucigramsLevels_Crucigrams]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CrucigramsLevels] DROP CONSTRAINT [FK_CrucigramsLevels_Crucigrams];
GO
IF OBJECT_ID(N'[dbo].[FK_CrucigramsLevels_Levels]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[CrucigramsLevels] DROP CONSTRAINT [FK_CrucigramsLevels_Levels];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[PlayersSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[PlayersSet];
GO
IF OBJECT_ID(N'[dbo].[ProfilesSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfilesSet];
GO
IF OBJECT_ID(N'[dbo].[CrucigramsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CrucigramsSet];
GO
IF OBJECT_ID(N'[dbo].[LevelsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[LevelsSet];
GO
IF OBJECT_ID(N'[dbo].[WordsSet]', 'U') IS NOT NULL
    DROP TABLE [dbo].[WordsSet];
GO
IF OBJECT_ID(N'[dbo].[CrucigramsWords]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CrucigramsWords];
GO
IF OBJECT_ID(N'[dbo].[ProfilesCrucigrams]', 'U') IS NOT NULL
    DROP TABLE [dbo].[ProfilesCrucigrams];
GO
IF OBJECT_ID(N'[dbo].[CrucigramsLevels]', 'U') IS NOT NULL
    DROP TABLE [dbo].[CrucigramsLevels];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PlayersSet'
CREATE TABLE [dbo].[PlayersSet] (
    [IDPlayer] bigint IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NULL,
    [FirstSurname] nvarchar(max)  NULL,
    [SecondSurname] nvarchar(max)  NULL,
    [NickName] nvarchar(max)  NULL,
    [BirthDate] datetime  NULL,
    [BirthDay] int  NULL,
    [BirthMonth] nvarchar(max)  NULL,
    [BirthYear] int  NULL,
    [MainEmail] nvarchar(max)  NULL,
    [AlternateEmail] nvarchar(max)  NULL,
    [Password] nvarchar(max)  NULL
);
GO

-- Creating table 'ProfilesSet'
CREATE TABLE [dbo].[ProfilesSet] (
    [IDProfile] bigint IDENTITY(1,1) NOT NULL,
    [ProfilePicture] nvarchar(max)  NULL,
    [Coins] bigint  NULL,
    [Players_IDPlayer] bigint  NOT NULL
);
GO

-- Creating table 'CrucigramsSet'
CREATE TABLE [dbo].[CrucigramsSet] (
    [IDCrucigram] bigint IDENTITY(1,1) NOT NULL
);
GO

-- Creating table 'LevelsSet'
CREATE TABLE [dbo].[LevelsSet] (
    [IDLevel] bigint IDENTITY(1,1) NOT NULL,
    [LevelName] nvarchar(max)  NULL,
    [Difficulty] nvarchar(max)  NULL
);
GO

-- Creating table 'WordsSet'
CREATE TABLE [dbo].[WordsSet] (
    [IDWord] bigint IDENTITY(1,1) NOT NULL,
    [Word] nvarchar(max)  NULL,
    [Description] nvarchar(max)  NULL
);
GO

-- Creating table 'CrucigramsWords'
CREATE TABLE [dbo].[CrucigramsWords] (
    [Crucigrams_IDCrucigram] bigint  NOT NULL,
    [Words_IDWord] bigint  NOT NULL
);
GO

-- Creating table 'ProfilesCrucigrams'
CREATE TABLE [dbo].[ProfilesCrucigrams] (
    [Profiles_IDProfile] bigint  NOT NULL,
    [Crucigrams_IDCrucigram] bigint  NOT NULL
);
GO

-- Creating table 'CrucigramsLevels'
CREATE TABLE [dbo].[CrucigramsLevels] (
    [Crucigrams_IDCrucigram] bigint  NOT NULL,
    [Levels_IDLevel] bigint  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IDPlayer] in table 'PlayersSet'
ALTER TABLE [dbo].[PlayersSet]
ADD CONSTRAINT [PK_PlayersSet]
    PRIMARY KEY CLUSTERED ([IDPlayer] ASC);
GO

-- Creating primary key on [IDProfile] in table 'ProfilesSet'
ALTER TABLE [dbo].[ProfilesSet]
ADD CONSTRAINT [PK_ProfilesSet]
    PRIMARY KEY CLUSTERED ([IDProfile] ASC);
GO

-- Creating primary key on [IDCrucigram] in table 'CrucigramsSet'
ALTER TABLE [dbo].[CrucigramsSet]
ADD CONSTRAINT [PK_CrucigramsSet]
    PRIMARY KEY CLUSTERED ([IDCrucigram] ASC);
GO

-- Creating primary key on [IDLevel] in table 'LevelsSet'
ALTER TABLE [dbo].[LevelsSet]
ADD CONSTRAINT [PK_LevelsSet]
    PRIMARY KEY CLUSTERED ([IDLevel] ASC);
GO

-- Creating primary key on [IDWord] in table 'WordsSet'
ALTER TABLE [dbo].[WordsSet]
ADD CONSTRAINT [PK_WordsSet]
    PRIMARY KEY CLUSTERED ([IDWord] ASC);
GO

-- Creating primary key on [Crucigrams_IDCrucigram], [Words_IDWord] in table 'CrucigramsWords'
ALTER TABLE [dbo].[CrucigramsWords]
ADD CONSTRAINT [PK_CrucigramsWords]
    PRIMARY KEY CLUSTERED ([Crucigrams_IDCrucigram], [Words_IDWord] ASC);
GO

-- Creating primary key on [Profiles_IDProfile], [Crucigrams_IDCrucigram] in table 'ProfilesCrucigrams'
ALTER TABLE [dbo].[ProfilesCrucigrams]
ADD CONSTRAINT [PK_ProfilesCrucigrams]
    PRIMARY KEY CLUSTERED ([Profiles_IDProfile], [Crucigrams_IDCrucigram] ASC);
GO

-- Creating primary key on [Crucigrams_IDCrucigram], [Levels_IDLevel] in table 'CrucigramsLevels'
ALTER TABLE [dbo].[CrucigramsLevels]
ADD CONSTRAINT [PK_CrucigramsLevels]
    PRIMARY KEY CLUSTERED ([Crucigrams_IDCrucigram], [Levels_IDLevel] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Players_IDPlayer] in table 'ProfilesSet'
ALTER TABLE [dbo].[ProfilesSet]
ADD CONSTRAINT [FK_ProfilesPlayers]
    FOREIGN KEY ([Players_IDPlayer])
    REFERENCES [dbo].[PlayersSet]
        ([IDPlayer])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfilesPlayers'
CREATE INDEX [IX_FK_ProfilesPlayers]
ON [dbo].[ProfilesSet]
    ([Players_IDPlayer]);
GO

-- Creating foreign key on [Crucigrams_IDCrucigram] in table 'CrucigramsWords'
ALTER TABLE [dbo].[CrucigramsWords]
ADD CONSTRAINT [FK_CrucigramsWords_Crucigrams]
    FOREIGN KEY ([Crucigrams_IDCrucigram])
    REFERENCES [dbo].[CrucigramsSet]
        ([IDCrucigram])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Words_IDWord] in table 'CrucigramsWords'
ALTER TABLE [dbo].[CrucigramsWords]
ADD CONSTRAINT [FK_CrucigramsWords_Words]
    FOREIGN KEY ([Words_IDWord])
    REFERENCES [dbo].[WordsSet]
        ([IDWord])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CrucigramsWords_Words'
CREATE INDEX [IX_FK_CrucigramsWords_Words]
ON [dbo].[CrucigramsWords]
    ([Words_IDWord]);
GO

-- Creating foreign key on [Profiles_IDProfile] in table 'ProfilesCrucigrams'
ALTER TABLE [dbo].[ProfilesCrucigrams]
ADD CONSTRAINT [FK_ProfilesCrucigrams_Profiles]
    FOREIGN KEY ([Profiles_IDProfile])
    REFERENCES [dbo].[ProfilesSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Crucigrams_IDCrucigram] in table 'ProfilesCrucigrams'
ALTER TABLE [dbo].[ProfilesCrucigrams]
ADD CONSTRAINT [FK_ProfilesCrucigrams_Crucigrams]
    FOREIGN KEY ([Crucigrams_IDCrucigram])
    REFERENCES [dbo].[CrucigramsSet]
        ([IDCrucigram])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfilesCrucigrams_Crucigrams'
CREATE INDEX [IX_FK_ProfilesCrucigrams_Crucigrams]
ON [dbo].[ProfilesCrucigrams]
    ([Crucigrams_IDCrucigram]);
GO

-- Creating foreign key on [Crucigrams_IDCrucigram] in table 'CrucigramsLevels'
ALTER TABLE [dbo].[CrucigramsLevels]
ADD CONSTRAINT [FK_CrucigramsLevels_Crucigrams]
    FOREIGN KEY ([Crucigrams_IDCrucigram])
    REFERENCES [dbo].[CrucigramsSet]
        ([IDCrucigram])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Levels_IDLevel] in table 'CrucigramsLevels'
ALTER TABLE [dbo].[CrucigramsLevels]
ADD CONSTRAINT [FK_CrucigramsLevels_Levels]
    FOREIGN KEY ([Levels_IDLevel])
    REFERENCES [dbo].[LevelsSet]
        ([IDLevel])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_CrucigramsLevels_Levels'
CREATE INDEX [IX_FK_CrucigramsLevels_Levels]
ON [dbo].[CrucigramsLevels]
    ([Levels_IDLevel]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------