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


-- SQL Functions

-- COUNT (* counts all rows, including null values)
SELECT COUNT(*) as NumOfPeople
  FROM people p;

-- Counting by column, excludes null values
SELECT COUNT(p.age) as NumOfPeopleWithAge
  FROM people p;

-- MIN
SELECT MIN(p.age) as LowestAge
  FROM people p;

-- MAX
SELECT MAX(p.age) as HighestAge
  FROM people p;

-- SUM
SELECT SUM(p.age) as CombinedAges
  FROM people p;

-- AVG
SELECT AVG(p.age) as AverageAge
  FROM people p;

-- Functions with qualifiers (DISTINCT, ALL etc.)
SELECT COUNT(DISTINCT p.name) as AllUniqueNames
  FROM people p;


-- GROUP BY
-- Show the count of names and their associated names.
SELECT COUNT(p.name) as NameCount, p.name
  FROM people p
    GROUP BY p.name;

-- Show the count of names and their associated names if 2 or more names.
SELECT COUNT(p.name) as NameCount, p.name
  FROM people p
    GROUP BY p.name
      HAVING NameCount >= 2;
