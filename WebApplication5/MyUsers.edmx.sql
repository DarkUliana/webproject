
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 11/20/2016 00:00:33
-- Generated from EDMX file: C:\Users\xxzz\Desktop\WebApplication5\WebApplication5\MyUsers.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [MyUsers];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[FK_DeviceUser]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[Devices] DROP CONSTRAINT [FK_DeviceUser];
GO
IF OBJECT_ID(N'[dbo].[FK_TimeStateDevice]', 'F') IS NOT NULL
    ALTER TABLE [dbo].[TimeStates] DROP CONSTRAINT [FK_TimeStateDevice];
GO

-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[Users]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Users];
GO
IF OBJECT_ID(N'[dbo].[Devices]', 'U') IS NOT NULL
    DROP TABLE [dbo].[Devices];
GO
IF OBJECT_ID(N'[dbo].[TimeStates]', 'U') IS NOT NULL
    DROP TABLE [dbo].[TimeStates];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [user_id] int IDENTITY(1,1) NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [address] nvarchar(max)  NOT NULL,
    [login] nvarchar(max)  NOT NULL,
    [password] nvarchar(max)  NOT NULL
);
GO

-- Creating table 'Devices'
CREATE TABLE [dbo].[Devices] (
    [device_id] int IDENTITY(1,1) NOT NULL,
    [type] nvarchar(max)  NOT NULL,
    [name] nvarchar(max)  NOT NULL,
    [user_id] int  NOT NULL
);
GO

-- Creating table 'TimeStates'
CREATE TABLE [dbo].[TimeStates] (
    [timestate_id] int IDENTITY(1,1) NOT NULL,
    [time] datetime  NOT NULL,
    [state] bit  NOT NULL,
    [device_id] int  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [user_id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([user_id] ASC);
GO

-- Creating primary key on [device_id] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [PK_Devices]
    PRIMARY KEY CLUSTERED ([device_id] ASC);
GO

-- Creating primary key on [timestate_id] in table 'TimeStates'
ALTER TABLE [dbo].[TimeStates]
ADD CONSTRAINT [PK_TimeStates]
    PRIMARY KEY CLUSTERED ([timestate_id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [user_id] in table 'Devices'
ALTER TABLE [dbo].[Devices]
ADD CONSTRAINT [FK_DeviceUser]
    FOREIGN KEY ([user_id])
    REFERENCES [dbo].[Users]
        ([user_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_DeviceUser'
CREATE INDEX [IX_FK_DeviceUser]
ON [dbo].[Devices]
    ([user_id]);
GO

-- Creating foreign key on [device_id] in table 'TimeStates'
ALTER TABLE [dbo].[TimeStates]
ADD CONSTRAINT [FK_TimeStateDevice]
    FOREIGN KEY ([device_id])
    REFERENCES [dbo].[Devices]
        ([device_id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;
GO

-- Creating non-clustered index for FOREIGN KEY 'FK_TimeStateDevice'
CREATE INDEX [IX_FK_TimeStateDevice]
ON [dbo].[TimeStates]
    ([device_id]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------