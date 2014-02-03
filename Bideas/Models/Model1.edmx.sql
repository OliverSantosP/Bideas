
-- --------------------------------------------------
-- Entity Designer DDL Script for SQL Server 2005, 2008, 2012 and Azure
-- --------------------------------------------------
-- Date Created: 02/03/2014 11:50:17
-- Generated from EDMX file: C:\Users\Oliver Santos\Documents\GitHub\Bideas\Bideas\Models\Model1.edmx
-- --------------------------------------------------

SET QUOTED_IDENTIFIER OFF;
GO
USE [Bideas];
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

-- Creating table 'Users'
CREATE TABLE [dbo].[Users] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NULL,
    [Name] nvarchar(50)  NOT NULL,
    [LastName] nvarchar(50)  NOT NULL,
    [Username] nvarchar(max)  NOT NULL,
    [Password] nvarchar(max)  NOT NULL,
    [Identification] nvarchar(max)  NULL,
    [Status] int  NOT NULL,
    [Address] nvarchar(max)  NULL,
    [Email] nvarchar(max)  NOT NULL,
    [Phone] nvarchar(max)  NULL,
    [MobilePhone] nvarchar(max)  NULL,
    [OtherPhone] nvarchar(max)  NULL,
    [AdsId] int  NOT NULL
);
GO

-- Creating table 'Status'
CREATE TABLE [dbo].[Status] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [RolesId] int  NOT NULL,
    [UsersId] int  NOT NULL,
    [UsersRolesId] int  NOT NULL,
    [PermissionsId] int  NOT NULL,
    [RolesPermissionsId] int  NOT NULL,
    [AdsCategoriesId] int  NOT NULL,
    [AdsSubcategoriesId] int  NOT NULL,
    [AdsTypeId] int  NOT NULL,
    [AdsId] int  NOT NULL,
    [AdsImagesId] int  NOT NULL
);
GO

-- Creating table 'Roles'
CREATE TABLE [dbo].[Roles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Status] int  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [RolesPermissionsId] int  NOT NULL
);
GO

-- Creating table 'UsersRoles'
CREATE TABLE [dbo].[UsersRoles] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NULL,
    [User] nvarchar(max)  NOT NULL,
    [Role] nvarchar(max)  NOT NULL,
    [ExpirationDate] datetime  NOT NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'Permissions'
CREATE TABLE [dbo].[Permissions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [RolesPermissionsId] int  NOT NULL
);
GO

-- Creating table 'RolesPermissions'
CREATE TABLE [dbo].[RolesPermissions] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NULL,
    [Role] int  NOT NULL,
    [Permission] int  NOT NULL,
    [Status] int  NOT NULL
);
GO

-- Creating table 'AdsCategories'
CREATE TABLE [dbo].[AdsCategories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NULL,
    [Status] int  NOT NULL,
    [Name] nvarchar(100)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [ImgPath] nvarchar(max)  NULL,
    [AdsSubcategoriesId] int  NOT NULL
);
GO

-- Creating table 'AdsSubcategories'
CREATE TABLE [dbo].[AdsSubcategories] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] nvarchar(max)  NULL,
    [Status] int  NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [ImgPath] nvarchar(max)  NULL,
    [Category] int  NOT NULL,
    [AdsId] int  NOT NULL
);
GO

-- Creating table 'AdsTypes'
CREATE TABLE [dbo].[AdsTypes] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [Name] nvarchar(max)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [AdsId] int  NOT NULL
);
GO

-- Creating table 'Ads'
CREATE TABLE [dbo].[Ads] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NOT NULL,
    [Name] nvarchar(200)  NOT NULL,
    [Description] nvarchar(max)  NOT NULL,
    [Type] int  NOT NULL,
    [ExpirationDate] datetime  NULL,
    [Location] nvarchar(max)  NOT NULL,
    [User] nvarchar(max)  NOT NULL,
    [Status] nvarchar(max)  NOT NULL,
    [Subcategory] nvarchar(max)  NOT NULL,
    [AdsImagesId] int  NOT NULL
);
GO

-- Creating table 'AdsImages'
CREATE TABLE [dbo].[AdsImages] (
    [Id] int IDENTITY(1,1) NOT NULL,
    [CreationDate] datetime  NOT NULL,
    [ModificationDate] datetime  NOT NULL,
    [ImgPath] nvarchar(max)  NOT NULL,
    [Status] int  NOT NULL,
    [Ad] nvarchar(max)  NOT NULL
);
GO

-- --------------------------------------------------
-- Creating all PRIMARY KEY constraints
-- --------------------------------------------------

-- Creating primary key on [Id] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [PK_Users]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [PK_Status]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [PK_Roles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'UsersRoles'
ALTER TABLE [dbo].[UsersRoles]
ADD CONSTRAINT [PK_UsersRoles]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Permissions'
ALTER TABLE [dbo].[Permissions]
ADD CONSTRAINT [PK_Permissions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'RolesPermissions'
ALTER TABLE [dbo].[RolesPermissions]
ADD CONSTRAINT [PK_RolesPermissions]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdsCategories'
ALTER TABLE [dbo].[AdsCategories]
ADD CONSTRAINT [PK_AdsCategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdsSubcategories'
ALTER TABLE [dbo].[AdsSubcategories]
ADD CONSTRAINT [PK_AdsSubcategories]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdsTypes'
ALTER TABLE [dbo].[AdsTypes]
ADD CONSTRAINT [PK_AdsTypes]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'Ads'
ALTER TABLE [dbo].[Ads]
ADD CONSTRAINT [PK_Ads]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- Creating primary key on [Id] in table 'AdsImages'
ALTER TABLE [dbo].[AdsImages]
ADD CONSTRAINT [PK_AdsImages]
    PRIMARY KEY CLUSTERED ([Id] ASC);
GO

-- --------------------------------------------------
-- Creating all FOREIGN KEY constraints
-- --------------------------------------------------

-- Creating foreign key on [RolesId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_RolesStatus]
    FOREIGN KEY ([RolesId])
    REFERENCES [dbo].[Roles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolesStatus'
CREATE INDEX [IX_FK_RolesStatus]
ON [dbo].[Status]
    ([RolesId]);
GO

-- Creating foreign key on [UsersId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_UsersStatus]
    FOREIGN KEY ([UsersId])
    REFERENCES [dbo].[Users]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersStatus'
CREATE INDEX [IX_FK_UsersStatus]
ON [dbo].[Status]
    ([UsersId]);
GO

-- Creating foreign key on [UsersRolesId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_UsersRolesStatus]
    FOREIGN KEY ([UsersRolesId])
    REFERENCES [dbo].[UsersRoles]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_UsersRolesStatus'
CREATE INDEX [IX_FK_UsersRolesStatus]
ON [dbo].[Status]
    ([UsersRolesId]);
GO

-- Creating foreign key on [PermissionsId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_PermissionsStatus]
    FOREIGN KEY ([PermissionsId])
    REFERENCES [dbo].[Permissions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_PermissionsStatus'
CREATE INDEX [IX_FK_PermissionsStatus]
ON [dbo].[Status]
    ([PermissionsId]);
GO

-- Creating foreign key on [RolesPermissionsId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_RolesPermissionsStatus]
    FOREIGN KEY ([RolesPermissionsId])
    REFERENCES [dbo].[RolesPermissions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolesPermissionsStatus'
CREATE INDEX [IX_FK_RolesPermissionsStatus]
ON [dbo].[Status]
    ([RolesPermissionsId]);
GO

-- Creating foreign key on [RolesPermissionsId] in table 'Roles'
ALTER TABLE [dbo].[Roles]
ADD CONSTRAINT [FK_RolesPermissionsRoles]
    FOREIGN KEY ([RolesPermissionsId])
    REFERENCES [dbo].[RolesPermissions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolesPermissionsRoles'
CREATE INDEX [IX_FK_RolesPermissionsRoles]
ON [dbo].[Roles]
    ([RolesPermissionsId]);
GO

-- Creating foreign key on [RolesPermissionsId] in table 'Permissions'
ALTER TABLE [dbo].[Permissions]
ADD CONSTRAINT [FK_RolesPermissionsPermissions]
    FOREIGN KEY ([RolesPermissionsId])
    REFERENCES [dbo].[RolesPermissions]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_RolesPermissionsPermissions'
CREATE INDEX [IX_FK_RolesPermissionsPermissions]
ON [dbo].[Permissions]
    ([RolesPermissionsId]);
GO

-- Creating foreign key on [AdsCategoriesId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_AdsCategoriesStatus]
    FOREIGN KEY ([AdsCategoriesId])
    REFERENCES [dbo].[AdsCategories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsCategoriesStatus'
CREATE INDEX [IX_FK_AdsCategoriesStatus]
ON [dbo].[Status]
    ([AdsCategoriesId]);
GO

-- Creating foreign key on [AdsSubcategoriesId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_AdsSubcategoriesStatus]
    FOREIGN KEY ([AdsSubcategoriesId])
    REFERENCES [dbo].[AdsSubcategories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsSubcategoriesStatus'
CREATE INDEX [IX_FK_AdsSubcategoriesStatus]
ON [dbo].[Status]
    ([AdsSubcategoriesId]);
GO

-- Creating foreign key on [AdsSubcategoriesId] in table 'AdsCategories'
ALTER TABLE [dbo].[AdsCategories]
ADD CONSTRAINT [FK_AdsSubcategoriesAdsCategories]
    FOREIGN KEY ([AdsSubcategoriesId])
    REFERENCES [dbo].[AdsSubcategories]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsSubcategoriesAdsCategories'
CREATE INDEX [IX_FK_AdsSubcategoriesAdsCategories]
ON [dbo].[AdsCategories]
    ([AdsSubcategoriesId]);
GO

-- Creating foreign key on [AdsTypeId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_AdsTypeStatus]
    FOREIGN KEY ([AdsTypeId])
    REFERENCES [dbo].[AdsTypes]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsTypeStatus'
CREATE INDEX [IX_FK_AdsTypeStatus]
ON [dbo].[Status]
    ([AdsTypeId]);
GO

-- Creating foreign key on [AdsId] in table 'Users'
ALTER TABLE [dbo].[Users]
ADD CONSTRAINT [FK_AdsUsers]
    FOREIGN KEY ([AdsId])
    REFERENCES [dbo].[Ads]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsUsers'
CREATE INDEX [IX_FK_AdsUsers]
ON [dbo].[Users]
    ([AdsId]);
GO

-- Creating foreign key on [AdsId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_AdsStatus]
    FOREIGN KEY ([AdsId])
    REFERENCES [dbo].[Ads]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsStatus'
CREATE INDEX [IX_FK_AdsStatus]
ON [dbo].[Status]
    ([AdsId]);
GO

-- Creating foreign key on [AdsId] in table 'AdsTypes'
ALTER TABLE [dbo].[AdsTypes]
ADD CONSTRAINT [FK_AdsAdsType]
    FOREIGN KEY ([AdsId])
    REFERENCES [dbo].[Ads]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsAdsType'
CREATE INDEX [IX_FK_AdsAdsType]
ON [dbo].[AdsTypes]
    ([AdsId]);
GO

-- Creating foreign key on [AdsId] in table 'AdsSubcategories'
ALTER TABLE [dbo].[AdsSubcategories]
ADD CONSTRAINT [FK_AdsAdsSubcategories]
    FOREIGN KEY ([AdsId])
    REFERENCES [dbo].[Ads]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsAdsSubcategories'
CREATE INDEX [IX_FK_AdsAdsSubcategories]
ON [dbo].[AdsSubcategories]
    ([AdsId]);
GO

-- Creating foreign key on [AdsImagesId] in table 'Ads'
ALTER TABLE [dbo].[Ads]
ADD CONSTRAINT [FK_AdsImagesAds]
    FOREIGN KEY ([AdsImagesId])
    REFERENCES [dbo].[AdsImages]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsImagesAds'
CREATE INDEX [IX_FK_AdsImagesAds]
ON [dbo].[Ads]
    ([AdsImagesId]);
GO

-- Creating foreign key on [AdsImagesId] in table 'Status'
ALTER TABLE [dbo].[Status]
ADD CONSTRAINT [FK_AdsImagesStatus]
    FOREIGN KEY ([AdsImagesId])
    REFERENCES [dbo].[AdsImages]
        ([Id])
    ON DELETE NO ACTION ON UPDATE NO ACTION;

-- Creating non-clustered index for FOREIGN KEY 'FK_AdsImagesStatus'
CREATE INDEX [IX_FK_AdsImagesStatus]
ON [dbo].[Status]
    ([AdsImagesId]);
GO

-- --------------------------------------------------
-- Script has ended
-- --------------------------------------------------