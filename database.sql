
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 03/02/2023 14:37:42
-- Generated from EDMX file: D:\Downloads\inclassauthstuff\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [PROG455SP23];
GO
IF SCHEMA_ID(N'dbo') IS NULL EXECUTE(N'CREATE SCHEMA [dbo]');
GO

-- --------------------------------------------------
-- Dropping existing FOREIGN KEY constraints
-- --------------------------------------------------


-- --------------------------------------------------
-- Dropping existing tables
-- --------------------------------------------------

IF OBJECT_ID(N'[dbo].[User]', 'U') IS NOT NULL
    DROP TABLE [dbo].[User];
GO

-- --------------------------------------------------
-- Creating all tables
-- --------------------------------------------------

-- Creating table 'Characters'
CREATE TABLE [dbo].[Characters] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [Name] nchar(100)  NOT NULL,
    [Element_Type] nchar(100)  NOT NULL,
    [Job_Class] nchar(100)  NOT NULL,
    [ATK] int  NOT NULL,
    [DEF] int  NOT NULL,
    [Mana] int  NOT NULL,
    [HP_Initial] int  NOT NULL,
    [HP_Max] int  NOT NULL,
    [NPC] bit  NOT NULL
);
GO

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [ID] int IDENTITY(1,1) NOT NULL,
    [First_Name] nvarchar(50)  NOT NULL,
    [Last_Name] nvarchar(50)  NOT NULL,
    [Username] nvarchar(50)  NOT NULL,
    [Password] nvarchar(50)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [ID] in table 'Characters'
ALTER TABLE [dbo].[Characters]
ADD CONSTRAINT [PK_Characters]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- Creating primary key on [ID] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([ID] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------