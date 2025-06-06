DROP DATABASE car_dealership;

CREATE DATABASE car_dealership;

USE car_dealership;

CREATE TABLE dealerships(
dealership_id int auto_increment primary key,
name varchar(50) NOT NULL,
address varchar (50) NOT NULL,
phone varchar (12) NOT NULL
);

CREATE TABLE vehicles(
vin  varchar(50) primary key,
year int NOT NULL ,
make varchar (50) NOT NULL,
model varchar (50) NOT NULL,
type varchar (50) NOT NULL,
color varchar (50) NOT NULL,
mileage int NOT NULL,
price double NOT NULL, 
sold boolean NOT NULL
);

CREATE TABLE inventory (
dealership_id int,
vin varchar(50) NOT NULL,
FOREIGN KEY (dealership_id) REFERENCES dealerships(dealership_id),
FOREIGN KEY (vin) REFERENCES vehicles (vin)
-- foreighn keys
);

CREATE TABLE sales_contracts(
contract_id int auto_increment primary key,
vin varchar(50) NOT NULL, -- foreighn key
sales_tax double NOT NULL,
recording_fee double NOT NULL,
procesing_fee double NOT NULL,
finance_status boolean NOT NULL,
sale_date DATE NOT NULL,
FOREIGN KEY (vin) REFERENCES vehicles (vin)
);

CREATE TABLE lease_contracts(
contract_id int auto_increment primary key,
ending_value double NOT NULL,
lease_fee double NOT NULL,
vin varchar(50) NOT NULL, -- foreighn key
FOREIGN KEY (vin) REFERENCES vehicles (vin)
);

INSERT INTO dealerships (name, address, phone) VALUES
('City Auto Mall', '123 Main St, Chicago, IL', '312-555-1001'),
('Sunshine Motors', '456 Elm St, Miami, FL', '305-555-2002'),
('Mountain Rides', '789 Oak St, Denver, CO', '720-555-3003'),
('Pacific Auto', '321 Pine St, Seattle, WA', '206-555-4004'),
('Desert Cars', '654 Maple St, Phoenix, AZ', '602-555-5005');

INSERT INTO vehicles (vin, year, make, model, type, color, mileage, price, sold) VALUES
('1HGBH41JXMN109186', 2020, 'Toyota', 'Camry', 'Sedan', 'Silver', 30000, 22000.00, false),
('2T1BURHE0FC123456', 2021, 'Honda', 'Civic', 'Sedan', 'Blue', 15000, 21000.00, true),
('3VW2K7AJ5FM456789', 2019, 'Volkswagen', 'Jetta', 'Sedan', 'White', 45000, 18000.00, false),
('1FTFW1ET7EFA12345', 2022, 'Ford', 'F-150', 'Truck', 'Black', 10000, 35000.00, true),
('5YJ3E1EA7KF123456', 2023, 'Tesla', 'Model 3', 'Electric', 'Red', 5000, 45000.00, false);

INSERT INTO inventory (dealership_id, vin) VALUES
(1, '1HGBH41JXMN109186'),
(2, '2T1BURHE0FC123456'),
(3, '3VW2K7AJ5FM456789'),
(4, '1FTFW1ET7EFA12345'),
(5, '5YJ3E1EA7KF123456');

INSERT INTO sales_contracts (vin, sales_tax, recording_fee, procesing_fee, finance_status, sale_date) VALUES
('2T1BURHE0FC123456', 1260.00, 100.00, 300.00, true, '2024-12-15'),
('1FTFW1ET7EFA12345', 2100.00, 120.00, 350.00, false, '2025-01-10'),
('1HGBH41JXMN109186', 1320.00, 110.00, 325.00, true, '2025-02-20'),
('3VW2K7AJ5FM456789', 1080.00, 90.00, 275.00, false, '2025-03-05'),
('5YJ3E1EA7KF123456', 2700.00, 150.00, 400.00, true, '2025-04-22');

INSERT INTO lease_contracts (ending_value, lease_fee, vin) VALUES
(12000.00, 250.00, '1HGBH41JXMN109186'),
(15000.00, 300.00, '2T1BURHE0FC123456'),
(10000.00, 220.00, '3VW2K7AJ5FM456789'),
(20000.00, 400.00, '1FTFW1ET7EFA12345'),
(28000.00, 500.00, '5YJ3E1EA7KF123456');

