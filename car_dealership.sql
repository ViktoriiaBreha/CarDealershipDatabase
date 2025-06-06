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
FOREIGN KEY (vin) REFERENCES vehicles (vin)
);

CREATE TABLE lease_contracts(
contract_id int auto_increment primary key,
ending_value double NOT NULL,
lease_fee double NOT NULL,
vin varchar(50) NOT NULL, -- foreighn key
FOREIGN KEY (vin) REFERENCES vehicles (vin)
);

