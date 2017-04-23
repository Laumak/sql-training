-- IS, IS NOT
SELECT p.name, p.age
  FROM people p
    WHERE p.age IS null;

SELECT p.name, p.age
  FROM people p
    WHERE p.age IS NOT null;


-- BETWEEN
SELECT p.name, p.age
  FROM people p
    WHERE p.age BETWEEN 10 AND 40;


-- LIKE
SELECT p.name, p.age
  FROM people p
    WHERE p.name LIKE "%ar%";


-- IN
SELECT p.name, p.age
  FROM people p
    WHERE p.name IN ("Lauri", "Mariel");


-- ORDER BY
SELECT p.name, p.age
  FROM people p
    WHERE p.age IS NOT null
    ORDER BY p.age;

SELECT p.name, p.age
  FROM people p
    ORDER BY p.name;


-- COUNT (* counts all rows, including null values)
SELECT COUNT(*) as NumOfPeople
  FROM people p;

-- Counting by column, excludes null values
SELECT COUNT(p.age) as NumOfPeopleWithAge
  FROM people p;
