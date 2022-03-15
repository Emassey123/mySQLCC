-------------Very Easy ----------------
-- Query to add two more cars
INSERT INTO car (make, model, year)
VALUES ("Tesla", "Model X", 2019),
("Dodge", "Charger",2018);
-------------Easy ----------------
- Query to add two new books
INSERT INTO book (title, publish_date, author_first_name, author_last_name)
VALUES ("Jungle Gym", "1997-07-04", "Alfredo", "Gluten"),
("Building A Sand Castle", "2023-12-05", "Chris", "Rock");
-- Query to delete oldest book
DELETE FROM book eee
WHERE publish_date IS NOT NULL 
ORDER BY publish_date ASC 
LIMIT 1;
 
-- Query to get the sum of all books in the table
-- SELECT SUM (id) FROM book;
-------------Medium ----------------
-- Query that pulls all movies in order by release where the title includes an "s"
SELECT * FROM movie WHERE title like '%s%' ORDER BY release_date ASC;

-------------Hard ----------------
-- Query that adds the director to the movies table seperately
ALTER TABLE movie ADD director_firstName VARCHAR (100),ADD director_lastName VARCHAR (100);

-- Query that selects the directors first and last name into one column 
SELECT CONCAT(director_firstName, ' ', director_lastName) as director FROM movie;

-- Query that puts the movie list in order from the director's last name
SELECT * FROM movie ORDER BY director_lastName ASC;

-- Query that removes the directors who last name ends with r-z
SET SQL_SAFE_UPDATES = 0;
DELETE FROM movie 
WHERE director_lastName 
LIKE '%r'
OR director_lastName LIKE '%s'
OR director_lastName  LIKE '%t'
OR director_lastName LIKE '%u'
OR director_lastName LIKE '%v'
OR director_lastName LIKE '%w'
OR director_lastName LIKE '%x'
OR director_lastName LIKE '%y'
OR director_lastName LIKE '%z';
-------------Very Hard ----------------
-- Query to add prices and color
UPDATE car
SET color = "yellow", price = 50000
WHERE ID = 8;
        

-- Query to put make and model under one column
SELECT CONCAT(make, ' ', model) AS typeOfCar FROM car;
 
 
 /* Query that adds an additional
 column to the results to show how many cars have 
 the same Make*/
SELECT COUNT(id), make AS result
FROM Car
GROUP BY make;
