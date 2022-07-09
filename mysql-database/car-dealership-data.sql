USE cardealership;

INSERT INTO vehicle
	(make, model, `type`, bodyStyle, `year`, transmission, exteriorColor,
    interiorColor, mileage, vin, msrp, saleprice, `description`, picture, featured)
VALUES 
('Audi', 'R8', 'NEW', 'CAR', 2022, 'AUTOMATIC', 'BLACK', 'WHITE', 1001, '1HGBH41JXMN109186', 80000, 90000, 'The dream car of the new century.', 'picturepath', 1),
('BMW', 'i8', 'NEW', 'CAR', 2022, 'AUTOMATIC', 'BLUE', 'GREY', 1002, '1HGBH41JXMN109187', 100000, 140000, 'Drive into the metaverse with the new electric i8.', 'picturepath', 1);
SELECT * FROM vehicle;


