 -- CREATE DATABASE MySQLCodingChallenge

USE MySQLCodingChallenge;

/*Create a table with your top three cars and include make, 
model, year. Create a query to add in two more cars */

/*CREATE TABLE car (
ID INT AUTO_INCREMENT ,
PRIMARY KEY(ID),
make VARCHAR(100),
model VARCHAR(100),
year INT
)*/

INSERT INTO car (make, model, year)
VALUES ("Toyota", "Camry", 2001),
("Ford", "Mustang", 2015),
("Honda", "CRV", 2013);


SELECT * FROM car;
