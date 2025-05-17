
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/16/2025 13:06:03
-- Generated from EDMX file: C:\Users\wmike69\Documents\Coding Projects\Renovación LIS\src\Server\DatabaseManager\RenovaciónLISDatabase.edmx
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


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------


-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'PlayersSet'
CREATE TABLE [dbo].[PlayersSet] (
    [IDPlayer] bigint IDENTITY(1,1) NOT NULL,
    [Names] nvarchar(max)  NOT NULL,
    [Surnames] nvarchar(max)  NOT NULL,
    [NickName] nvarchar(max)  NOT NULL,
    [BirthDate] datetime  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Profiles_IDProfile] bigint  NOT NULL
);
GO

-- Creating table 'ProfilesSet'
CREATE TABLE [dbo].[ProfilesSet] (
    [IDProfile] bigint IDENTITY(1,1) NOT NULL,
    [Score] bigint  NOT NULL,
    [LoginStatus] nvarchar(max)  NOT NULL,
    [ProfileImage] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'FriendRequestsSet'
CREATE TABLE [dbo].[FriendRequestsSet] (
    [IDFriendRequest] bigint IDENTITY(1,1) NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [SendingStatus] nvarchar(max)  NOT NULL,
    [AceptationStatus] nvarchar(max)  NOT NULL,
    [ProfilesIDProfile] bigint  NOT NULL,
    [ProfilesIDProfile1] bigint  NOT NULL
);
GO

-- Creating table 'ProfilesProfiles'
CREATE TABLE [dbo].[ProfilesProfiles] (
    [Profiles2_IDProfile] bigint  NOT NULL,
    [Profiles1_IDProfile] bigint  NOT NULL
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

-- Creating primary key on [IDFriendRequest] in table 'FriendRequestsSet'
ALTER TABLE [dbo].[FriendRequestsSet]
ADD CONSTRAINT [PK_FriendRequestsSet]
    PRIMARY KEY CLUSTERED ([IDFriendRequest] ASC);
GO

-- Creating primary key on [Profiles2_IDProfile], [Profiles1_IDProfile] in table 'ProfilesProfiles'
ALTER TABLE [dbo].[ProfilesProfiles]
ADD CONSTRAINT [PK_ProfilesProfiles]
    PRIMARY KEY CLUSTERED ([Profiles2_IDProfile], [Profiles1_IDProfile] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [Profiles2_IDProfile] in table 'ProfilesProfiles'
ALTER TABLE [dbo].[ProfilesProfiles]
ADD CONSTRAINT [FK_ProfilesProfiles_Profiles]
    FOREIGN KEY ([Profiles2_IDProfile])
    REFERENCES [dbo].[ProfilesSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [Profiles1_IDProfile] in table 'ProfilesProfiles'
ALTER TABLE [dbo].[ProfilesProfiles]
ADD CONSTRAINT [FK_ProfilesProfiles_Profiles1]
    FOREIGN KEY ([Profiles1_IDProfile])
    REFERENCES [dbo].[ProfilesSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfilesProfiles_Profiles1'
CREATE INDEX [IX_FK_ProfilesProfiles_Profiles1]
ON [dbo].[ProfilesProfiles]
    ([Profiles1_IDProfile]);
GO

-- Creating foreign key on [Profiles_IDProfile] in table 'PlayersSet'
ALTER TABLE [dbo].[PlayersSet]
ADD CONSTRAINT [FK_PlayersProfiles]
    FOREIGN KEY ([Profiles_IDProfile])
    REFERENCES [dbo].[ProfilesSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayersProfiles'
CREATE INDEX [IX_FK_PlayersProfiles]
ON [dbo].[PlayersSet]
    ([Profiles_IDProfile]);
GO

-- Creating foreign key on [ProfilesIDProfile] in table 'FriendRequestsSet'
ALTER TABLE [dbo].[FriendRequestsSet]
ADD CONSTRAINT [FK_ProfilesFriendRequests]
    FOREIGN KEY ([ProfilesIDProfile])
    REFERENCES [dbo].[ProfilesSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfilesFriendRequests'
CREATE INDEX [IX_FK_ProfilesFriendRequests]
ON [dbo].[FriendRequestsSet]
    ([ProfilesIDProfile]);
GO

-- Creating foreign key on [ProfilesIDProfile1] in table 'FriendRequestsSet'
ALTER TABLE [dbo].[FriendRequestsSet]
ADD CONSTRAINT [FK_ProfilesFriendRequests1]
    FOREIGN KEY ([ProfilesIDProfile1])
    REFERENCES [dbo].[ProfilesSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfilesFriendRequests1'
CREATE INDEX [IX_FK_ProfilesFriendRequests1]
ON [dbo].[FriendRequestsSet]
    ([ProfilesIDProfile1]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------