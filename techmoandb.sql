DROP DATABASE IF EXISTS techmoandb;

CREATE DATABASE techmoandb;

USE techmoandb;

CREATE TABLE DeviceSources (
  DeviceSourceId INT PRIMARY KEY AUTO_INCREMENT,
  DeviceSource VARCHAR(255) NOT NULL,
  DeviceSourceLink VARCHAR(500),
  Sponsor VARCHAR(255))
ENGINE = InnoDB;


CREATE TABLE DeviceModels (
  ModelId INT PRIMARY KEY AUTO_INCREMENT,
  ModelName VARCHAR(75) NOT NULL,
  ModelNumber VARCHAR(75) NOT NULL,
  ManufacturerName VARCHAR(255) NOT NULL,
  CountryRegion VARCHAR(75))
ENGINE = InnoDB;


CREATE TABLE Categories (
  CategoryId INT PRIMARY KEY AUTO_INCREMENT,
  CategoryName VARCHAR(75) NOT NULL UNIQUE,
  CategoryDescription TEXT)
ENGINE = InnoDB;


CREATE TABLE Status (
  StatusId INT PRIMARY KEY AUTO_INCREMENT,
  StatusName VARCHAR(45) NOT NULL,
  StatusDescription TEXT)
ENGINE = InnoDB;


CREATE TABLE Devices (
  DeviceId INT PRIMARY KEY AUTO_INCREMENT,
  DeviceName VARCHAR(75) NOT NULL,
  ModelId INT NOT NULL,
  SerialNumber VARCHAR(75) UNIQUE,
  ManufactureDate DATE,
  Description TEXT,
  StatusId INT NOT NULL,
  OriginalPrice DECIMAL(10,2) DEFAULT 0.00,
  PurchasePrice DECIMAL(10,2) DEFAULT 0.00,
  CurrentPrice DECIMAL(10,2) DEFAULT 0.00,
  AcquisitionDate DATE,
  ConditionAtAcquisition VARCHAR(50) NOT NULL,
  YoutubeVideoLink VARCHAR(500),
  DeviceSourceId INT NOT NULL,
  CategoryId INT NOT NULL,
  DeviceWeight DECIMAL(5,2) DEFAULT 0.00,
  DeviceDimensions VARCHAR(45),
  CONSTRAINT fk_Devices_DeviceModels
    FOREIGN KEY (ModelId)
    REFERENCES DeviceModels (ModelId)
    ON DELETE RESTRICT
    ON UPDATE RESTRICT,
  CONSTRAINT fk_Devices_DeviceSources
    FOREIGN KEY (DeviceSourceId)
    REFERENCES DeviceSources (DeviceSourceId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Devices_Categories
    FOREIGN KEY (CategoryId)
    REFERENCES Categories (CategoryId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_Devices_Status
    FOREIGN KEY (StatusId)
    REFERENCES Status (StatusId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;

CREATE TABLE Accessories (
  AccessoryId INT PRIMARY KEY AUTO_INCREMENT,
  AccessoryName VARCHAR(75) NOT NULL,
  AccessoryPrice DECIMAL(10,2) DEFAULT 0.00,
  DeviceId INT NOT NULL,
  CONSTRAINT fk_Accessories_Devices
    FOREIGN KEY (DeviceId)
    REFERENCES Devices (DeviceId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE AffiliateLinks (
  LinkId INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  WebsiteLink VARCHAR(500) NOT NULL,
  CountryRegion VARCHAR(75),
  DeviceId INT NOT NULL,
  CONSTRAINT fk_AffiliateLinks_Devices
    FOREIGN KEY (DeviceId)
    REFERENCES Devices (DeviceId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE Customers (
  CustomerId INT PRIMARY KEY AUTO_INCREMENT,
  FirstName VARCHAR(60) NOT NULL,
  LastName VARCHAR(60),
  EmailAddress VARCHAR(255) NOT NULL UNIQUE)
ENGINE = InnoDB;


CREATE TABLE DeviceOrders (
  OrderId INT PRIMARY KEY AUTO_INCREMENT,
  CustomerId INT NOT NULL,
  OrderDate DATETIME NOT NULL,
  CONSTRAINT fk_DeviceOrders_Customers
    FOREIGN KEY (CustomerId)
    REFERENCES Customers (CustomerId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE Features (
  FeatureId INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  FeatureTitle VARCHAR(255) NOT NULL,
  FeatureDescriprion TEXT)
ENGINE = InnoDB;


CREATE TABLE DevicesFeatures (
  DeviceFeatureId INT PRIMARY KEY AUTO_INCREMENT,
  FeatureId INT NOT NULL,
  DeviceId INT NOT NULL,
  CONSTRAINT fk_DevicesFeatures_Features
    FOREIGN KEY (FeatureId)
    REFERENCES Features (FeatureId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_DevicesFeatures_Devices
    FOREIGN KEY (DeviceId)
    REFERENCES Devices (DeviceId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE Repairs (
  RepairId INT PRIMARY KEY AUTO_INCREMENT,
  RepairType VARCHAR(45) NULL,
  RepairDescription TEXT NULL)
ENGINE = InnoDB;


CREATE TABLE DevicesRepairs (
  DeviceRepairId INT PRIMARY KEY AUTO_INCREMENT,
  DeviceId INT NOT NULL,
  RepairId INT NOT NULL,
  AdditionalInfo TEXT,
  CONSTRAINT fk_DevicesRepairs_Devices
    FOREIGN KEY (DeviceId)
    REFERENCES Devices (DeviceId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_DevicesRepairs_Repairs
    FOREIGN KEY (RepairId)
    REFERENCES Repairs (RepairId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE ForSaleDevices (
  SaleDeviceId INT PRIMARY KEY AUTO_INCREMENT,
  DeviceId INT NOT NULL,
  OrderId INT NOT NULL,
  DiscountPercent DECIMAL(10,2) DEFAULT 0.00,
  CurrentPrice DECIMAL(10,2) NOT NULL,
  CONSTRAINT fk_ForSaleDevices_Devices
    FOREIGN KEY (DeviceId)
    REFERENCES Devices (DeviceId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT fk_ForSaleDevices_DeviceOrders
    FOREIGN KEY (OrderId)
    REFERENCES DeviceOrders (OrderId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


CREATE TABLE ReferencedDocumentations (
  DocumentationID INT PRIMARY KEY AUTO_INCREMENT,
  Title VARCHAR(255) NOT NULL,
  WebsiteLink VARCHAR(500),
  Description TEXT,
  DeviceId INT NOT NULL,
  CONSTRAINT fk_DevicesDocumentations_Devices
    FOREIGN KEY (DeviceId)
    REFERENCES Devices (DeviceId)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;