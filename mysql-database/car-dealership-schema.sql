# Lim Xuan Hui 

DROP DATABASE IF EXISTS cardealership;
CREATE DATABASE cardealership;
USE cardealership;

DROP TABLE IF EXISTS vehicle;
CREATE TABLE vehicle (
	vehicleId INT AUTO_INCREMENT,
    make VARCHAR(12) NOT NULL,
    model VARCHAR(10) NOT NULL,
    `description` VARCHAR(1000) NOT NULL,
    bodyStyle VARCHAR(10) NOT NULL,
    transmission ENUM ('AUTOMATIC', 'MANUAL') NOT NULL,
	exteriorColor VARCHAR(10) NOT NULL,
    interiorColor VARCHAR(10) NOT NULL,
    mileage INT NOT NULL,
    vin VARCHAR(100) NOT NULL,
    salePrice DECIMAL(8,2) NOT NULL,
    msrp DECIMAL(8,2) NOT NULL,
    picture TEXT NOT NULL 
);
DESCRIBE vehicle;