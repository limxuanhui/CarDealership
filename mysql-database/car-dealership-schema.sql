# Lim Xuan Hui 

DROP DATABASE IF EXISTS cardealership;
CREATE DATABASE cardealership;
USE cardealership;

DROP TABLE IF EXISTS make;
CREATE TABLE make (
	makeId INT AUTO_INCREMENT,
    make VARCHAR(20) NOT NULL,
    CONSTRAINT PK_make PRIMARY KEY (makeId)
);
DESCRIBE make;

DROP TABLE IF EXISTS vehicle;
CREATE TABLE vehicle (
	vehicleId INT AUTO_INCREMENT,
    makeId INT NOT NULL,
    model VARCHAR(10) NOT NULL,
    `type` ENUM ('NEW', 'USED') NOT NULL,
    bodyStyle ENUM ('CAR', 'SUV', 'TRUCK', 'VAN') NOT NULL,
	`year` YEAR NOT NULL,
    transmission ENUM ('AUTOMATIC', 'MANUAL') NOT NULL,
    exteriorColor VARCHAR(10) NOT NULL,
    interiorColor VARCHAR(10) NOT NULL,
    mileage INT NOT NULL,
    vin CHAR(17) NOT NULL,    
    msrp DECIMAL(9,2) NOT NULL,
    salePrice DECIMAL(9,2) NOT NULL,
    `description` VARCHAR(1000) NOT NULL,
    picture TEXT NOT NULL,
    featured BOOLEAN NOT NULL,
    CONSTRAINT PK_vehicle PRIMARY KEY (vehicleId),
    CONSTRAINT FK_vehicle_make FOREIGN KEY (makeId) REFERENCES make (makeId)
);
DESCRIBE vehicle;

DROP TABLE IF EXISTS staff;
CREATE TABLE staff (
	staffId INT AUTO_INCREMENT,
    `role` ENUM ('SALES', 'ADMIN') NOT NULL,
	username VARCHAR(20) NOT NULL,
    password VARCHAR(100) NOT NULL,
    CONSTRAINT PK_staff PRIMARY KEY (staffId)
);
DESCRIBE staff;

DROP TABLE IF EXISTS inventory;
CREATE TABLE inventory (
	inventoryId INT AUTO_INCREMENT,
    vehicleId INT NOT NULL,
    quantity INT NOT NULL DEFAULT 0,
    CONSTRAINT PK_inventory PRIMARY KEY (inventoryId),    
    CONSTRAINT FK_inventory_vehicle FOREIGN KEY (vehicleId) REFERENCES vehicle (vehicleId)
);
DESCRIBE inventory;

DROP TABLE IF EXISTS sale;
CREATE TABLE sale (
	saleId INT NOT NULL,
    customerId INT NOT NULL,
    salesPersonId INT NOT NULL,
    CONSTRAINT PK_sale PRIMARY KEY (saleId),
    CONSTRAINT FK_sale_customer FOREIGN KEY (customerId) REFERENCES customer (customerId),
    CONSTRAINT FK_sale_staff FOREIGN KEY (salesPersonId) REFERENCES staff (staffId)
);
DESCRIBE sale;