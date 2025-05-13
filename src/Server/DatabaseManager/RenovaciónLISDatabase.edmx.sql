
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 05/13/2025 13:21:00
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

-- Creating table 'FriendRequestsSetSet'
CREATE TABLE [dbo].[FriendRequestsSetSet] (
    [IDFriendRequest] bigint IDENTITY(1,1) NOT NULL,
    [Message] nvarchar(max)  NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [SendingStatus] nvarchar(max)  NOT NULL,
    [AceptationStatus] nvarchar(max)  NOT NULL,
    [ProfilesSet_IDProfile] bigint  NOT NULL,
    [ProfilesSet1_IDProfile] bigint  NOT NULL
);
GO

-- Creating table 'ProfilesSetSet'
CREATE TABLE [dbo].[ProfilesSetSet] (
    [IDProfile] bigint IDENTITY(1,1) NOT NULL,
    [Score] bigint  NULL,
    [LoginStatus] nvarchar(max)  NOT NULL,
    [ProfileImage] nvarchar(max)  NULL
);
GO

-- Creating table 'PlayersSetSet'
CREATE TABLE [dbo].[PlayersSetSet] (
    [IDPlayer] bigint IDENTITY(1,1) NOT NULL,
    [Names] nvarchar(max)  NOT NULL,
    [Surnames] nvarchar(max)  NOT NULL,
    [NickName] nvarchar(max)  NOT NULL,
    [BirthDate] datetime  NOT NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [ProfilesSet_IDProfile] bigint  NOT NULL
);
GO

-- Creating table 'ProfilesSetProfilesSet'
CREATE TABLE [dbo].[ProfilesSetProfilesSet] (
    [ProfilesSet2_IDProfile] bigint  NOT NULL,
    [ProfilesSet1_IDProfile] bigint  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [IDFriendRequest] in table 'FriendRequestsSetSet'
ALTER TABLE [dbo].[FriendRequestsSetSet]
ADD CONSTRAINT [PK_FriendRequestsSetSet]
    PRIMARY KEY CLUSTERED ([IDFriendRequest] ASC);
GO

-- Creating primary key on [IDProfile] in table 'ProfilesSetSet'
ALTER TABLE [dbo].[ProfilesSetSet]
ADD CONSTRAINT [PK_ProfilesSetSet]
    PRIMARY KEY CLUSTERED ([IDProfile] ASC);
GO

-- Creating primary key on [IDPlayer] in table 'PlayersSetSet'
ALTER TABLE [dbo].[PlayersSetSet]
ADD CONSTRAINT [PK_PlayersSetSet]
    PRIMARY KEY CLUSTERED ([IDPlayer] ASC);
GO

-- Creating primary key on [ProfilesSet2_IDProfile], [ProfilesSet1_IDProfile] in table 'ProfilesSetProfilesSet'
ALTER TABLE [dbo].[ProfilesSetProfilesSet]
ADD CONSTRAINT [PK_ProfilesSetProfilesSet]
    PRIMARY KEY CLUSTERED ([ProfilesSet2_IDProfile], [ProfilesSet1_IDProfile] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [ProfilesSet2_IDProfile] in table 'ProfilesSetProfilesSet'
ALTER TABLE [dbo].[ProfilesSetProfilesSet]
ADD CONSTRAINT [FK_ProfilesSetProfilesSet_ProfilesSet]
    FOREIGN KEY ([ProfilesSet2_IDProfile])
    REFERENCES [dbo].[ProfilesSetSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating foreign key on [ProfilesSet1_IDProfile] in table 'ProfilesSetProfilesSet'
ALTER TABLE [dbo].[ProfilesSetProfilesSet]
ADD CONSTRAINT [FK_ProfilesSetProfilesSet_ProfilesSet1]
    FOREIGN KEY ([ProfilesSet1_IDProfile])
    REFERENCES [dbo].[ProfilesSetSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_ProfilesSetProfilesSet_ProfilesSet1'
CREATE INDEX [IX_FK_ProfilesSetProfilesSet_ProfilesSet1]
ON [dbo].[ProfilesSetProfilesSet]
    ([ProfilesSet1_IDProfile]);
GO

-- Creating foreign key on [ProfilesSet_IDProfile] in table 'PlayersSetSet'
ALTER TABLE [dbo].[PlayersSetSet]
ADD CONSTRAINT [FK_PlayersSetProfilesSet]
    FOREIGN KEY ([ProfilesSet_IDProfile])
    REFERENCES [dbo].[ProfilesSetSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_PlayersSetProfilesSet'
CREATE INDEX [IX_FK_PlayersSetProfilesSet]
ON [dbo].[PlayersSetSet]
    ([ProfilesSet_IDProfile]);
GO

-- Creating foreign key on [ProfilesSet_IDProfile] in table 'FriendRequestsSetSet'
ALTER TABLE [dbo].[FriendRequestsSetSet]
ADD CONSTRAINT [FK_FriendRequestsSetProfilesSet]
    FOREIGN KEY ([ProfilesSet_IDProfile])
    REFERENCES [dbo].[ProfilesSetSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FriendRequestsSetProfilesSet'
CREATE INDEX [IX_FK_FriendRequestsSetProfilesSet]
ON [dbo].[FriendRequestsSetSet]
    ([ProfilesSet_IDProfile]);
GO

-- Creating foreign key on [ProfilesSet1_IDProfile] in table 'FriendRequestsSetSet'
ALTER TABLE [dbo].[FriendRequestsSetSet]
ADD CONSTRAINT [FK_FriendRequestsSetProfilesSet1]
    FOREIGN KEY ([ProfilesSet1_IDProfile])
    REFERENCES [dbo].[ProfilesSetSet]
        ([IDProfile])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_FriendRequestsSetProfilesSet1'
CREATE INDEX [IX_FK_FriendRequestsSetProfilesSet1]
ON [dbo].[FriendRequestsSetSet]
    ([ProfilesSet1_IDProfile]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------